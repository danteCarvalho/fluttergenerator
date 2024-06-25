import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/imagem/imagem.dart';
import '../../entidades/usuario/usuario.dart';

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
    Usuario usuario = Usuario().mapToClass(requestMap["usuario"]);
    imagem = await insertHasura(imagem);
    usuario.imagem = imagem;
    usuario = await insertHasura(usuario);
    resposta["usuario"] = usuario;
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/editUsuario')
  Future<Response> editUsuario(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    Usuario usuario = Usuario().mapToClass(requestMap["usuario"]);
    String? updateFields = requestMap["updateFields"];
    usuario = await updateHasura(usuario,updateFields: updateFields);
    resposta["usuario"] = usuario;
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

