import 'dart:convert';

import 'package:http/http.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app_store.dart';
import '../outros/config/config.dart';
import '../outros/excecoes.dart';



Future<String> serverJwtPost(Map map, String endpoint) async {
  var instance = await SharedPreferences.getInstance();
  var jwt = instance.getString("jwt");
  if (jwt == null) {
    throw PararError("Faça o login");
  }
  if (JwtDecoder.isExpired(jwt)) {
    await onJwtExpired!();
    throw PararError("Faça o login novamente");
  }
  Map<String, String> headers = {};
  headers["Authorization"] = "Bearer $jwt";
  var uri = Uri.parse("${config.schemeServidor}://${config.ipServidor}:${config.portaServidor}/$endpoint");
  var jsonSring = json.encode(map);
  var response = await post(uri, body: jsonSring, headers: headers);
  return response.body;
}

Future<String> serverPost(Map map, String endpoint) async {
  var uri = Uri.parse("${config.schemeServidor}://${config.ipServidor}:${config.portaServidor}/$endpoint");
  var jsonSring = json.encode(map);
  var response = await post(uri, body: jsonSring);
  return response.body;
}

Future<String> serverGet(String endpoint) async {
  var uri = Uri.parse("${config.schemeServidor}://${config.ipServidor}:${config.portaServidor}/$endpoint");
  var response = await get(uri);
  return response.body;
}
