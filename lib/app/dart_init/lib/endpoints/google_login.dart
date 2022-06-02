import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';

import '../entidades/usuario/usuario.dart';
import '../hasura/hasura_dao.dart';
import '../outros/config.dart';
import '../outros/entidade_helper.dart';
import '../outros/excecoes.dart';
import '../outros/security.dart';


googleLogin(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();

  Map requestObj = json.decode(requestString);

  String secret = "";
  if (requestObj["tipo"] == "web") {
    secret = config.googleSecretWeb;
  } else if (requestObj["tipo"] == "OS") {
    secret = config.googleSecretOS;
  }

  Map map = {};
  map["code"] = requestObj["code"];
  map["client_id"] = requestObj["client_id"];
  map["client_secret"] = secret;
  map["redirect_uri"] = requestObj["redirect_uri"];
  map["grant_type"] = "authorization_code";
  if (requestObj.containsKey("state")) {
    map["state"] = requestObj["state"];
  }

  var uri = Uri.https("oauth2.googleapis.com", "/token");
  Response response = await post(uri, body: json.encode(map));
  Map token = json.decode(response.body);

  uri = Uri.parse("https://oauth2.googleapis.com/tokeninfo?id_token=" + token["id_token"]);
  response = await get(uri);
  Map tokenInfo = json.decode(response.body);

  String returning = "id id2 nome email";

  var sql = sqlHasura(Usuario(), [expr("email", "_eq", tokenInfo["email"])], [returning]);

  Usuario usuario;

  try {
    usuario = await selectOneHasura(sql, Usuario());
  } on NaoEncontrado {
    usuario = Usuario();
    usuario.nome = tokenInfo["name"];
    usuario.email = tokenInfo["email"];
    usuario = await insertHasura(usuario, returning: returning);
  }

  String jwt = Security.criarJwt(usuario);

  request.response.write(json.encode({"token": token, "tokenInfo": tokenInfo, "usuario": usuario, "jwt": jwt}));
}
