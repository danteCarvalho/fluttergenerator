

import 'dart:convert';

import 'package:http/http.dart';

Map? handleError(Response response,{Map? constraints} ){
  Map obj = json.decode(response.body);
  if(obj.containsKey("errors")) {
    String code = obj["errors"][0]["extensions"]["code"];
    String msg = obj["errors"][0]["message"];

    Map map = {};

    if (code == "constraint-violation") {
      if (constraints != null) {
          for (String i  in constraints.keys){
            if(msg.contains(i)){
              map["mensagem"] = constraints[i];
              break;
            }
          }
      }
      else {
        map["mensagem"] = msg;
      }
    }
    else {
      map["mensagem"] = msg;
    }
    return map;
  }
  return null;
}