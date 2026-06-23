import 'dart:convert';

import 'package:bcrypt/bcrypt.dart';
import 'package:dartutils/dartutils.dart';
import 'package:mailer/mailer.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../daos/postgres_dao.dart';
import '../../entidades/app_link/app_link.dart';
import '../../entidades/imagem/imagem.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/email.dart';
import '../../outros/excecoes.dart';
import '../../outros/security.dart';
import '../imagem/imagem.dart';

part 'usuario.g.dart';
part 'usuario.reflection.g.dart';

@EnableReflection()
@routerAnnotation
class UsuarioEndpoint extends RouterMethods {
  @Route.post('/addUsuario')
  Future<Response> addUsuario(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    Imagem imagem = Imagem().mapToClass(requestMap["imagem"]);
    try {
      Usuario usuario = Usuario().mapToClass(requestMap["usuario"]);
      imagem = await saveImage(imagem);
      usuario.imagem = imagem;
      String hashed = BCrypt.hashpw(usuario.senha, BCrypt.gensalt(logRounds: 10));
      usuario.senha = hashed;
      usuario = await insertHasura(usuario);
      String jwt = Security.criarJwt(usuario);
      usuario.senha = "";
      resposta["usuario"] = usuario;
      resposta["jwt"] = jwt;
      return Response.ok(json.encode(resposta));
    } on ConstraintError catch (_) {
      return Response.ok(json.encode({"mensagem": "Usuário já cadastrado"}));
    }
  }

  @Route.post('/editUsuario')
  @RouterMethodAnnotation(authorization: true)
  Future<Response> editUsuario(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    Usuario usuario = Usuario().mapToClass(requestMap["usuario"]);
    String? updateFields = "cidade estado telefone email username imagem_id";
    usuario = await updateHasura(usuario, updateFields: updateFields, excludFields: "senha");
    usuario.senha = "";
    resposta["usuario"] = usuario;
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/getUsuario')
  @RouterMethodAnnotation(authorization: true)
  Future<Response> getUsuario(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    String id = requestMap["id"];
    try {
      Usuario usuario = await selectByIdHasura(id, Usuario(), excludFields: "senha");
      usuario.senha = "";
      resposta["usuario"] = usuario;
    } on NaoEncontrado catch (e, _) {
      resposta["mensagem"] = "Usuário não encontrado";
    }
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/verificaEmail') //envia o email para ser verificado
  @RouterMethodAnnotation(authorization: true)
  Future<Response> verificaEmail(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    String id = requestMap["usuario"];
    String origin = requestMap["origin"];
    Usuario usuario = await selectByIdHasura(id, Usuario());
    AppLink appLink = AppLink();
    appLink.usuario = usuario;
    appLink.service = "verificaEmail";
    appLink = await insertHasura(appLink);
    String texto = "$origin/verificaEmail2?id=${appLink.id}";
    Message msg = buildMessage(texto, usuario.email, "Confirmação de email");
    await enviarEmail(msg);
    resposta["ok"] = "ok";
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/verificaEmail2') //confirma o email do usuario como verificado
  Future<Response> verificaEmail2(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    String id = requestMap["id"];
    try {
      List<Map> list = [];
      list.add(expr("ativa", "_eq", true));
      list.add(expr("id", "_eq", id));
      list.add(expr("service", "_eq", "verificaEmail"));
      var sql = sqlHasura(AppLink(), list, [selectFields(AppLink())]);
      AppLink appLink = await selectOneHasura(sql, AppLink());
      var usuario = appLink.usuario!;
      usuario.emailVerificado = true;
      appLink.ativa = false;
      await runTransactionPostgres(
        (session) async {
          await updatePostgres(usuario, updateFields: "emailVerificado", session: session);
          await updatePostgres(appLink, updateFields: "ativa", session: session);
        },
      );
      usuario = await selectByIdHasura(usuario.id, usuario,excludFields: "senha");
      usuario.senha = "";
      resposta["usuario"] = usuario;
    } on NaoEncontrado catch (e, _) {
      resposta["mensagem"] = "Link não encontrado";
    }
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/esqueciSenha')
  Future<Response> esqueciSenha(Request request) async {
    //envia o email de esqueci a senha
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    String email = requestMap["email"];
    String origin = requestMap["origin"];
    List<Map> list = [];
    list.add(expr("ativa", "_eq", true));
    list.add(expr("email", "_eq", email));
    var sql = sqlHasura(Usuario(), list, [selectFields(Usuario())]);
    Usuario usuario;
    try {
      usuario = await selectOneHasura(sql, Usuario());
    } on NaoEncontrado catch (e, _) {
      resposta["mensagem"] = "Email não encontrado";
      return Response.ok(json.encode(resposta));
    }
    AppLink appLink = AppLink();
    appLink.usuario = usuario;
    appLink.service = "esqueciSenha";
    appLink = await insertHasura(appLink);
    String texto = "$origin/esqueciSenha2?id=${appLink.id}";
    Message msg = buildMessage(texto, usuario.email, "Esqueci a senha");
    await enviarEmail(msg);
    resposta["ok"] = "ok";
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/esqueciSenha2')
  Future<Response> esqueciSenha2(Request request) async {
    //salva a alteração da senha
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    String id = requestMap["id"];
    String senha = requestMap["senha"];
    try {
      List<Map> list = [];
      list.add(expr("ativa", "_eq", true));
      list.add(expr("id", "_eq", id));
      list.add(expr("service", "_eq", "esqueciSenha"));
      var sql = sqlHasura(AppLink(), list, [selectFields(AppLink())]);
      AppLink appLink = await selectOneHasura(sql, AppLink());
      var usuario = appLink.usuario!;
      String hashed = BCrypt.hashpw(senha, BCrypt.gensalt(logRounds: 10));
      usuario.senha = hashed;
      appLink.ativa = false;
      await runTransactionPostgres(
        (session) async {
          await updatePostgres(usuario, updateFields: "senha", session: session);
          await updatePostgres(appLink, updateFields: "ativa", session: session);
        },
      );
      resposta["ok"] = "ok";
    } on NaoEncontrado catch (e, _) {
      resposta["mensagem"] = "Link não encontrado";
    }
    return Response.ok(json.encode(resposta));
  }

  @override
  Router getRouter() {
    return _$UsuarioEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
