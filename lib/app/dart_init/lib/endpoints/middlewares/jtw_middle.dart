import 'package:jaguar_jwt/jaguar_jwt.dart';
import 'package:shelf/shelf.dart';

import '../../outros/security.dart';

Middleware jwtMiddleware() {
  // CORS Settings
  const corsHeaders = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Methods': '*',
    'Access-Control-Allow-Headers': '*',
  };
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

List<String> excecoes = [
  "",
  "favicon.ico",
  "api/teste",
  "api/login",
  "api/googleLogin",
  "api/verificaAtualizaJwt",
  "api/addUsuario",
  "api/getImagem",
  "api/listarAgendamentos",
  "api/verificaEmail2",
  "api/esqueciSenha",
  "api/esqueciSenha2",
];
