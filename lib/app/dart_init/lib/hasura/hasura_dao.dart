import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';

import '../entidades/entidade.dart';
import '../outros/config.dart';
import '../outros/entidade_helper.dart';
import '../outros/excecoes.dart';

String sqlHasura<T extends Entidade>(T entidade, List<Map> whereList, List<String> selectList) {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  String whereString = where(whereList);
  String selectString = select(selectList);

  String sql = """
{
  $nomeTabela $whereString {
    $selectString
  }
}
    """;
  return sql;
}

String customSelectHasura(String campo, List<Map> whereList, List<String> selectList) {
  String whereString = where(whereList);
  String selectString = select(selectList);
  String sql = """
  $campo $whereString {
    $selectString
  }
  """;
  return sql;
}

Future<T> selectByIdHasura<T extends Entidade>(String id, T entidade, {String? returning}) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();

  String sql = """
{
  ${nomeTabela}_by_pk(id: "$id") {
    ${ returning ?? selectFields(entidade, subFields: true)}
  }
}

""";

  String myJson = json.encode({"query": sql});

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");

  var response = await post(uri, body: myJson, headers: headers);

  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  if (decode["data"]["${nomeTabela}_by_pk"] == null) {
    throw NaoEncontrado(nomeTabela);
  }
  T retorno = entidade.mapToClass(decode["data"]["${nomeTabela}_by_pk"]);
  return retorno;
}

Future<T> selectOneHasura<T extends Entidade>(String sql, T entidade) async {
  String myJson = json.encode({"query": sql});
  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");
  var response = await post(uri, body: myJson, headers: headers);
  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  if (nuloOuvazio([decode["data"][nomeTabela]])) {
    throw NaoEncontrado(nomeTabela);
  }
  List listaEntidades = decode["data"][nomeTabela];
  if (listaEntidades.length > 1) {
    throw PararError("Mais de uma entidade");
  }
  T retorno = entidade.mapToClass(listaEntidades[0]);
  return retorno;
}

Future selectHasura(String sql) async {
  String myJson = json.encode({"query": sql});
  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");
  var response = await post(uri, body: myJson, headers: headers);
  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  Map data = decode["data"];
  var first = data.values.first;
  if(first is Map){
    return first.values.first;
  }
  else if (first is List){
    return first;
  }
}

Future<List<T>> selectListHasura<T extends Entidade>(String sql, T entidade) async {
  String myJson = json.encode({"query": sql});

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");

  var response = await post(uri, body: myJson, headers: headers);

  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    throw decode["errors"];
  }
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  if (nuloOuvazio([decode["data"][nomeTabela]])) {
    throw NaoEncontrado(nomeTabela);
  }

  List list = decode["data"][nomeTabela];

  List<T> retorno = [];

  for (var obj in list) {
    retorno.add(entidade.mapToClass(obj));
  }

  return retorno;
}

Future<T> insertHasura<T extends Entidade>(T entidade, {String? returning}) async {
  String nomeentidade = entidade.runtimeType.toString().toLowerCase();
  if (entidade.id != null) {
    throw PararError("insert com id");
  }

  var data = DateTime.now();

  entidade.dataCriacao = data;
  entidade.dataEdicao = data;
  entidade.ativa = true;

  Map obj = entidade.classToMap();

  trocarNomeEntidades(entidade, obj);

  obj.remove("id");
  obj.remove("id2");

  trocarStrings(obj);

  obj = fieldsToLowerCase(obj);


  var sql = """
mutation MyMutation {
  insert_${nomeentidade}_one(object:   ${obj.toString()}  ) {
    ${returning ?? selectFields(entidade,subFields: true)}
  }
}
""";

  obj = {};
  obj["query"] = sql;

  String myJson = json.encode(obj);

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");

  var response = await post(uri, body: myJson, headers: headers);

  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    String code = decode["errors"][0]["extensions"]["code"];
    String msg = decode["errors"][0]["message"];
    if (code == "constraint-violation") {
      throw ConstraintError(msg);
    }
    throw decode["errors"];
  }

  T retorno = entidade.mapToClass(decode["data"]["insert_${nomeentidade}_one"]);

  return retorno;
}

Future<T> updateHasura<T extends Entidade>(T entidade, String updateFields, {String? returning}) async {

  String nomeentidade = entidade.runtimeType.toString().toLowerCase();

  if (entidade.id == null) {
    throw PararError("update sem id");
  }


  entidade.dataEdicao = DateTime.now();

  Map obj = entidade.classToMap();

  trocarNomeEntidades(entidade, obj);

  trocarStrings(obj);

  obj = fieldsToLowerCase(obj);
  String id = obj["id"];
  obj = manterCamposUpdate(updateFields, obj);

  var sql = """
mutation MyMutation {
  update_${nomeentidade}_by_pk(pk_columns: {id:   $id   }, _set:   ${obj.toString()}   ) {
    ${returning ?? selectFields(entidade,subFields: true)}
  }
}
  """;

  obj = {};
  obj["query"] = sql;

  String myJson = json.encode(obj);

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");

  var response = await post(uri, body: myJson, headers: headers);

  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    String code = decode["errors"][0]["extensions"]["code"];
    String msg = decode["errors"][0]["message"];
    if (code == "constraint-violation") {
      throw ConstraintError(msg);
    }
    throw decode["errors"];
  }

  T retorno =  entidade.mapToClass(decode["data"]["update_${nomeentidade}_by_pk"]);

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
  return "(where: $map )";
}

Map expr(String path, String operator, dynamic value) {
  List split = path.split(".");
  Map currentValue = {operator: (value is String|| value is DateTime) ? "\"$value\"" : value};
  for (var obj in split.reversed) {
    currentValue = {obj: currentValue};
  }
  return currentValue;
}

String selectFields<T extends Entidade>(T entidade, {bool subFields = false}) {
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();
  String campos = "";
  for (var obj in allFields) {
    if(reflector.canReflectType(obj.type.type)){
      if (subFields) {
        var newInstance = instancia(obj.type.type);
        campos += "${obj.name.toLowerCase()}{${selectFields(newInstance)}}";
      } else {
        campos += "${obj.name.toLowerCase()}{ id }";
      }
    }
    else{
      var type = obj.type.toString();
      if (type == "String" || type == "int" || type == "double" || type == "bool"  || type == "DateTime") {
        campos += "${obj.name.toLowerCase()} ";
      }
    }
  }
  return campos;
}

trocarNomeEntidades(Entidade entidade, Map map) {
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();
  for (var obj in allFields) {
    if (reflector.canReflectType(obj.type.type)) {
      var valor = map.remove(obj.name);
      map[obj.name + "_id"] = valor?["id"];
    }
  }
}

trocarStrings(Map obj) {
  obj.forEach((key, value) {
    if (value is String || value is DateTime) {
      obj[key] = "\"$value\"";
    }
  });
}

fieldsToLowerCase(Map obj) {
  Map obj2 = {};
  obj.forEach((key, value) {
    obj2[key.toString().toLowerCase()] = value;
  });
  return obj2;
}

manterCamposUpdate(String campos, Map obj) {
  Map obj2 = {};

  var split = campos.trim().toLowerCase().split(" ");
  for (var campo in split) {
    obj2[campo] = obj[campo];
  }
  if (!obj2.containsKey("dataedicao")) {
    obj2["dataedicao"] = obj["dataedicao"];
  }

  return obj2;
}



