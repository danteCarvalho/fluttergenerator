import 'dart:convert';

import 'package:http/http.dart';
import '../outros/config.dart';

googleLogin(Map map) async {

  try{
    var uri = Uri.parse("${config.schemeServidor}://${config.ipServidor}:${config.portaServidor}/googleLogin");
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
