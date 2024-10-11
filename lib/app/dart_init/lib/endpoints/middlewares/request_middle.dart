import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:shelf/shelf.dart';

import '../../outros/security.dart';

  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': '*',
    'Access-Control-Allow-Headers': '*',
  };
Middleware requestMiddleware(List<String> excecoes) {
  return createMiddleware(
    requestHandler: (Request request) {
      if (request.method == "OPTIONS") {
        return Response.ok("", headers: corsHeaders);
      }
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
