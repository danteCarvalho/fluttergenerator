import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/excecoes.dart';
import '../../outros/security.dart';

part 'jwt.g.dart';
part 'jwt.reflection.g.dart';
@EnableReflection()
@routerAnnotation
class JwtEndpoint extends RouterMethods {
  @Route.post('/verificaAtualizaJwt')
  Future<Response> verificaAtualizaJwt(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    var jwt = requestMap["jwt"];
    var usuarioId = requestMap["usuarioId"];
    Usuario usuario;
    try {
      usuario = await selectByIdHasura(usuarioId, Usuario());
    } on NaoEncontrado {
      return Response.unauthorized(json.encode({"mensagem": "Usuário não encontrado ao atualizar JWT"}));
    }
    try {
      Security.verificarJwt2(jwt);
    } on JwtException catch (e) {
      if (e.message == "JWT token expired!") {
        var newJwt = Security.criarJwt(usuario);
        return Response.ok(json.encode({"jwt": newJwt}));
      } else {
        rethrow;
      }
    }
    return Response.ok(json.encode({"ok": ""}));
  }

  @override
  Router getRouter() {
    return _$JwtEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
