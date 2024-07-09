import 'dart:convert';
import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:http/http.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../entidades/entidade.dart';
import '../outros/config/config.dart';
import '../outros/entidade_helper.dart';
import '../outros/excecoes.dart';

String sqlHasura<T extends Entidade>(T entidade, List<Map> whereList, List<String> selectList, {List<Map>? orderByList, int? inicio, int? maximo}) {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  String whereString = where(whereList);
  String selectString = select(selectList);
  String orderByString = "";
  String inicioString = "";
  String maximoString = "";
  if (orderByList != null) {
    orderByString = orderBy(orderByList);
  }
  if (inicio != null) {
    inicioString = ", offset: $inicio";
  }
  if (maximo != null) {
    maximoString = ", limit: $maximo";
  }

  String sql = """
{
  $nomeTabela${config.hasuraSufix} ( $whereString $orderByString $inicioString $maximoString ) {
    $selectString
  }
}
    """;
  return sql;
}

String customSelectHasura(String campo, List<Map> whereList, List<String> selectList, {List<Map>? orderByList, int? inicio, int? maximo}) {
  String whereString = where(whereList);
  String selectString = select(selectList);
  String orderByString = "";
  String inicioString = "";
  String maximoString = "";
  if (orderByList != null) {
    orderByString = orderBy(orderByList);
  }
  if (inicio != null) {
    inicioString = ", offset: $inicio";
  }
  if (maximo != null) {
    maximoString = ", limit: $maximo";
  }
  String sql = """
  $campo ( $whereString $orderByString $inicioString $maximoString ) {
    $selectString
  }
  """;
  return sql;
}

Future<T> selectByIdHasura<T extends Entidade>(String id, T entidade, {String? returning, bool subFields = false}) async {
  var instance = await SharedPreferences.getInstance();
  var jwt = instance.getString("jwt");

  var nomeTabela = entidade.runtimeType.toString().toLowerCase();

  String sql = """
{
  $nomeTabela${config.hasuraSufix}_by_pk(id: "$id") {
    ${returning ?? selectFields(entidade, subFields: subFields)}
  }
}

""";

  String jsonSring = json.encode({"query": sql});
  Map<String, String> headers = {};
  headers["Authorization"] = "Bearer ${jwt!}";

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");
  Response response;
  try {
    response = await post(uri, body: jsonSring, headers: headers);
  } on Exception catch (e) {
    throw e.toString();
  } catch (e) {
    throw e.toString();
  }

  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  if (decode["data"]["$nomeTabela${config.hasuraSufix}_by_pk"] == null) {
    throw NaoEncontrado(nomeTabela);
  }
  T retorno = entidade.mapToClass(decode["data"]["$nomeTabela${config.hasuraSufix}_by_pk"]);
  return retorno;
}

Future<T> selectOneHasura<T extends Entidade>(String sql, T entidade) async {
  var instance = await SharedPreferences.getInstance();
  var jwt = instance.getString("jwt");

  String jsonSring = json.encode({"query": sql});
  Map<String, String> headers = {};
  headers["Authorization"] = "Bearer ${jwt!}";

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");
  Response response;
  try {
    response = await post(uri, body: jsonSring, headers: headers);
  } on Exception catch (e) {
    throw e.toString();
  } catch (e) {
    throw e.toString();
  }
  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  if (nuloOuvazio([decode["data"][nomeTabela + config.hasuraSufix]])) {
    throw NaoEncontrado(nomeTabela);
  }
  List listaEntidades = decode["data"][nomeTabela + config.hasuraSufix];
  if (listaEntidades.length > 1) {
    throw PararError("Mais de uma entidade");
  }
  T retorno = entidade.mapToClass(listaEntidades[0]);
  return retorno;
}

Future selectHasura(String sql) async {
  var instance = await SharedPreferences.getInstance();
  var jwt = instance.getString("jwt");

  String jsonSring = json.encode({"query": sql});
  Map<String, String> headers = {};
  headers["Authorization"] = "Bearer ${jwt!}";

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");
  Response response;
  try {
    response = await post(uri, body: jsonSring, headers: headers);
  } on Exception catch (e) {
    throw e.toString();
  } catch (e) {
    throw e.toString();
  }
  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  Map data = decode["data"];
  var first = data.values.first;
  if (first is Map) {
    return first.values.first;
  } else if (first is List) {
    return first;
  }
}

Future<List<T>> selectListHasura<T extends Entidade>(String sql, T entidade) async {
  var instance = await SharedPreferences.getInstance();
  var jwt = instance.getString("jwt");

  String jsonSring = json.encode({"query": sql});
  Map<String, String> headers = {};
  headers["Authorization"] = "Bearer ${jwt!}";

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");

  Response response;
  try {
    response = await post(uri, body: jsonSring, headers: headers);
  } on Exception catch (e) {
    throw e.toString();
  } catch (e) {
    throw e.toString();
  }
  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  if (nuloOuvazio([decode["data"][nomeTabela + config.hasuraSufix]])) {
    throw NaoEncontrado(nomeTabela);
  }
  List list = decode["data"][nomeTabela + config.hasuraSufix];
  List<T> retorno = [];
  for (var obj in list) {
    retorno.add(entidade.mapToClass(obj));
  }
  return retorno;
}

String select(List<String> selectList) {
  String selectString = "";
  for (var obj in selectList) {
    selectString += "$obj ";
  }
  return selectString;
}

String where(List<Map> list) {
  Map map = {};
  for (var obj in list) {
    map.addAll(obj);
  }
  return " where: $map ";
}

String orderBy(List<Map> list) {
  Map map = {};
  for (var obj in list) {
    map.addAll(obj);
  }
  return ", order_by: $map ";
}

Map expr(String path, String operator, dynamic value) {
  List split = path.split(".");
  Map currentValue = {operator: (value is String || value is DateTime) ? "\"$value\"" : value};
  for (var obj in split.reversed) {
    currentValue = {obj: currentValue};
  }
  return currentValue;
}

Map orderExpr(String path, String order) {
  List split = path.split(".");
  Map currentValue = {};
  for (var obj in split.reversed) {
    if (currentValue.isEmpty) {
      currentValue = {obj: order};
    } else {
      currentValue = {obj: currentValue};
    }
  }
  return currentValue;
}

String selectFields<T extends Entidade>(T entidade, {bool subFields = false}) {
  var reflectionFactory = ReflectionFactory();
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();
  String campos = "";
  for (var obj in allFields) {
    if (reflector.canReflectType(obj.type.type)) {
      if (subFields) {
        var newInstance = instancia(obj.type.type);
        campos += "${obj.name.toLowerCase()}{${selectFields(newInstance)}}";
      } else {
        campos += "${obj.name.toLowerCase()}{ id }";
      }
    } else {
      var typeString = obj.type.toString();
      if (obj.type.isPrimitiveType || typeString == "DateTime" || reflectionFactory.hasRegisterEnumReflection(obj.type.type)) {
        campos += "${obj.name.toLowerCase()} ";
      }
    }
  }
  return campos;
}

subscriptionHasura(String sql) async {
  var instance = await SharedPreferences.getInstance();
  var jwt = instance.getString("jwt");

  String init = """
{
   "type":"connection_init",
   "payload":{
      "lazy":true
   }
}      
      """;

  String start = """
{
   "id":"${const Uuid().v4()}",
   "type":"start",
   "payload":{
      "query":"${sql.replaceAll("\n", "")}"
   }
}      
      """;

  Map<String, String> headers = {};
  headers["Authorization"] = "Bearer ${jwt!}";
  WebSocket webSocket;
  try {
    webSocket = await WebSocket.connect("${config.schemeHasura == "http" ? "ws" : "wss"}://${config.ipHasura}:${config.portaHasura}/v1/graphql", headers: headers);
  } on Exception catch (e) {
    throw e.toString();
  } catch (e) {
    throw e.toString();
  }

  webSocket.add(init);
  webSocket.add(start);
  return webSocket;
}
