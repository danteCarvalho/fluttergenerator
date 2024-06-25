import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:shelf/shelf.dart';

import '../../outros/security.dart';

Middleware jwtMiddleware() {
  return createMiddleware(
    requestHandler: (Request request) {
      var path = request.url.path;
      if (!excecoes.contains(path)) {
        try {
          var jwt = request.headers["Authorization"];
          Security.verificarJwt(jwt);
        } on JwtException catch (e) {
          return Response.unauthorized(e.message);
        }
      }
      return null;
    },
  );
}

List<String> excecoes = ["", "favicon.ico", "api/teste", "api/login", "api/googleLogin", "api/verificaAtualizaJwt","api/addUsuario"];
