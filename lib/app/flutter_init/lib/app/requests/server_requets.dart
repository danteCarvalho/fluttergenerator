  
import 'dart:convert';

import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../outros/config.dart';
import '../outros/excecoes.dart';


serverJwtPost(Map map,String endpoint) async {
  try{
    var instance = await SharedPreferences.getInstance();
    var jwt = instance.getString("jwt");
    if(jwt == null){
      throw PararError("Sem jwt");
    }
    Map<String, String> headers = {};
    headers["Authorization"] = "Bearer $jwt";
    var uri = Uri.parse("${config.schemeServidor}://${config.ipServidor}:${config.portaServidor}/$endpoint");
    var jsonSring = json.encode(map);
    var response = await post(uri, body: jsonSring, headers: headers);
    return response.body;
 } on Exception catch (e) {
    throw e.toString();
  } catch (e) {
    throw e.toString();
  }

}


Future<String> serverPost(Map map,String endpoint) async {
  try {
    var uri = Uri.parse("${config.schemeServidor}://${config.ipServidor}:${config.portaServidor}/$endpoint");
    var jsonSring = json.encode(map);
    var response = await post(uri, body: jsonSring);
    return response.body;
  }
  on Exception catch (e) {
    throw e.toString();
  }
  catch (e) {
    throw e.toString();
  }
}