import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../outros/security.dart';

part 'jwt.g.dart';
part 'jwt.reflection.g.dart';
@EnableReflection()
@routerAnnotation
class JwtEndpoint extends RouterMethods {
  @Route.post('/verificaJwt')
  Future<Response> verificaAtualizaJwt(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    var jwt = requestMap["jwt"];
    try {
      Security.verificarJwt2(jwt);
    } on JwtException catch (e) {
      return Response.ok(json.encode({"invalido": e.message}));
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
