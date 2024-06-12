class DartTemplates {

  static String dartModel = """

import 'dart:convert';

import 'package:dartutils/dartutils.dart';  
import 'package:json_annotation/json_annotation.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../entidade.dart';

part 'wwww.g.dart';
part 'wwww.reflection.g.dart';


@JsonSerializable(explicitToJson: true, anyMap: true)
@EnableReflection()
@reflector
@SerialAnnotation()
class WWWW extends Entidade with _\$Serial {

  static WWWW fromJson(Map map) {
    Map map2 = WWWW().dbMaptoClassMap(map);
    return _\$WWWWFromJson(map2);
  }
 
}




  """;

  static String endPoint = """
  
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

editWWWW(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  Map resposta = {};
  String id = requestMap["id"];
  WWWW aaaa = await selectByIdHasura(id, WWWW());
  //colocar aqui os campos de update
  aaaa = await updateHasura(aaaa, "");
  resposta["aaaa"] = aaaa;
  request.response.write(json.encode(resposta));
}

  
  """;


  static String shelfEndPoint = """
import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/wwww/wwww.dart';

part 'wwww.g.dart';
part 'wwww.reflection.g.dart';


@EnableReflection()
@routerAnnotation
class WWWWEndpoint extends RouterMethods {
  @Route.post('/addWWWW')
  Future<Response> addWWWW(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    WWWW aaaa = WWWW().mapToClass(requestMap["aaaa"]);
    aaaa = await insertHasura(aaaa);
    resposta["aaaa"] = aaaa;
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/editWWWW')
  Future<Response> editWWWW(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    WWWW aaaa = WWWW().mapToClass(requestMap["aaaa"]);
    aaaa = await updateHasura(aaaa, "");
    resposta["aaaa"] = aaaa;
    return Response.ok(json.encode(resposta));
  }

  @override
  Router getRouter() {
    return _\$WWWWEndpointRouter(this);
  }
  @override
  ClassReflection reflect() {
    return reflection;
  }
}

""";

}