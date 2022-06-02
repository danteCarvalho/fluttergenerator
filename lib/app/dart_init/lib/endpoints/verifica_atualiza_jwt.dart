import 'dart:convert';
import 'dart:io';

import 'package:jaguar_jwt/jaguar_jwt.dart';

import '../entidades/usuario/usuario.dart';
import '../hasura/hasura_dao.dart';
import '../outros/excecoes.dart';
import '../outros/security.dart';

verificaAtualizaJwt(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  var jwt = requestMap["jwt"];
  var usuarioId = requestMap["usuarioId"];
  Usuario usuario;
  try {
    usuario = await selectByIdHasura(usuarioId, Usuario());
  } on NaoEncontrado {
    request.response.write(json.encode({"mensagem": "Usuário não encontrado ao atualizar JWT"}));
    return;
  }
  try {
    Security.verificarJwt2(jwt);
  } on JwtException catch (e) {
    if (e.message == "JWT token expired!") {
      var newJwt = Security.criarJwt(usuario);
      request.response.write(json.encode({"jwt": newJwt}));
    } else {
      rethrow;
    }
  }
}
