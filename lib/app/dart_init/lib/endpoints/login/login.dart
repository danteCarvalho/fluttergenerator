import 'dart:convert';

import 'package:bcrypt/bcrypt.dart';
import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/excecoes.dart';
import '../../outros/security.dart';

part 'login.g.dart';
part 'login.reflection.g.dart';
@EnableReflection()
@routerAnnotation
class LoginEndpoint extends RouterMethods {
  @Route.post('/login')
  Future<Response> login(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();

    Map obj = json.decode(myJson);

    var email = obj["email"];
    var senha = obj["senha"];

    List<Map> wheres = [];
    wheres.add(expr("ativa", "_eq", true));
    wheres.add(expr("email", "_eq", email));
    var sql = sqlHasura(Usuario(), wheres, [selectFields(Usuario())]);
    Usuario usuario;
    try {
      usuario = await selectOneHasura(sql, Usuario());
    } on NaoEncontrado {
      return Response.unauthorized(json.encode({"mensagem": "Usuário ou senha incorretos"}));
    }
    final bool checkPassword = BCrypt.checkpw(senha, usuario.senha);
    if(!checkPassword){
      return Response.unauthorized(json.encode({"mensagem": "Usuário ou senha incorretos"}));
    }
    String jwt = Security.criarJwt(usuario);
    Map map = {};
    map["usuario"] = usuario.classToMap();
    map["jwt"] = jwt;
    return Response.ok(json.encode(map));
  }

  @override
  Router getRouter() {
    return _$LoginEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
