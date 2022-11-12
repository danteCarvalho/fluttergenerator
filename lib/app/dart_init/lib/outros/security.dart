import 'dart:io';
import 'dart:math';

import '../entidades/usuario/usuario.dart';
import '../outros/config.dart';
import 'package:jaguar_jwt/jaguar_jwt.dart';

class Security {
  static verificarJwt(HttpRequest request) {
    var jwt = request.headers.value("Authorization");
    if (jwt == null) {

      throw JwtException("No Jwt found ${request.uri.toString()}");
    }
    jwt = jwt.replaceAll("Bearer ", "");

    verificarJwt2(jwt);
  }

  static verificarJwt2(String jwt) {
    JwtClaim jwtClaim = verifyJwtHS256Signature(jwt, config.hasuraSharedSecret);
    jwtClaim.validate();
  }

  static String criarJwt(Usuario usuario) {
    List roles = [];
    roles.add("usuario");
    if (usuario.admin == true) {
      roles.add("admin");
    }

    Map<String, dynamic> clains = {};
    Map<String, dynamic> clains2 = {};
    clains2["x-hasura-default-role"] = "usuario";
    clains2["x-hasura-allowed-roles"] = roles;
    clains["https://hasura.io/jwt/claims"] = clains2;

    final claimSet = JwtClaim(
        subject: usuario.id, jwtId: _randomString(32), otherClaims: clains);

    final token = issueJwtHS256(claimSet, config.hasuraSharedSecret);

    return token;
  }

  static String _randomString(int length) {
    const chars =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
    final rnd = Random(DateTime.now().millisecondsSinceEpoch);
    final buf = StringBuffer();

    for (var x = 0; x < length; x++) {
      buf.write(chars[rnd.nextInt(chars.length)]);
    }
    return buf.toString();
  }
}
