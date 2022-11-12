class DartTemplates {

  static String dartModel = """

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';

part 'wwww.g.dart';
part 'wwww.reflection.g.dart';


@JsonSerializable(explicitToJson: true, anyMap: true)
@EnableReflection()
@reflector
class WWWW extends Entidade {

  static WWWW fromJson(Map map) {
    Map map2 = WWWW().dbMaptoClassMap(map);
    return _\$WWWWFromJson(map2);
  }
  
  static List<WWWW>? listMapToListClass2(List? list) {
    if(list == null){
      return null;
    }
    List<WWWW> list2 = [];
    for(var obj in list){
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _\$WWWWToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _\$WWWWToJson(this);
  }

  @override
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = Map();
    List allFields = WWWW().reflect().allFields();
    for(var obj in allFields){
      var name = obj.name;
      if (original.containsKey(name)) {
        map2[name] = original[name];
      } else if (original.containsKey(name.toString().toLowerCase())) {
        map2[name] = original[name.toString().toLowerCase()];
      }
    }
    return map2;
  }

  @override
  String classToString() {
    return json.encode(this);
  }

  @override
  WWWW stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _\$WWWWFromJson(map2);

  }

  @override
  WWWW mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _\$WWWWFromJson(map2);
  }
  
  @override
  List<WWWW>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }
  
  @override
  ClassReflection<WWWW> reflect() {
    return reflection;
  }
  
}




  """;

static String addEndPoint =   """
  
import 'dart:convert';
import 'dart:io';

import '../../entidades/wwww/wwww.dart';
import '../../daos/hasura_dao.dart';

addWWWW(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  Map resposta = {};
  WWWW aaaa = WWWW().mapToClass(requestMap["aaaa"]);
  aaaa = await insertHasura(aaaa);
  resposta["aaaa"] = aaaa;
  request.response.write(json.encode(resposta));
}

  
  """;

  static String editEndPoint = """

import 'dart:convert';
import 'dart:io';

import '../../entidades/wwww/wwww.dart';
import '../../daos/hasura_dao.dart';

editWWWW(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  Map resposta = {};
  String id = requestMap["id"];
  WWWW aaaa = await selectByIdHasura(id, WWWW());
  //mude aqui
  aaaa = await updateHasura(aaaa, "");
  resposta["aaaa"] = aaaa;
  request.response.write(json.encode(resposta));
}

  

  """;

}
