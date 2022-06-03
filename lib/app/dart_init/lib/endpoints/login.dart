import 'dart:convert';
import 'dart:io';

import '../daos/hasura_dao.dart';
import '../entidades/usuario/usuario.dart';
import '../outros/excecoes.dart';
import '../outros/security.dart';

login(HttpRequest request) async {
  String myJson = await utf8.decoder.bind(request).join();

  Map obj = json.decode(myJson);

  var email = obj["email"];
  var senha = obj["senha"];

  List<Map> wheres = [];
  wheres.add(expr("ativa", "_eq", true));
  wheres.add(expr("email", "_eq", email));
  wheres.add(expr("senha", "_eq", senha));
  var sql = sqlHasura(Usuario(), wheres, [selectFields(Usuario())]);
  Usuario usuario;
  try {
    usuario = await selectOneHasura(sql, Usuario());
  } on NaoEncontrado {
    throw "Usuário não encontrado";
  }

  String jwt = Security.criarJwt(usuario);
  Map map = {};
  map["usuario"] = usuario.classToMap();
  map["jwt"] = jwt;

  request.response.write(json.encode(map));
}
