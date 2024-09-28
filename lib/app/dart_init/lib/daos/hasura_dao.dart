import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:http/http.dart';
import 'package:reflection_factory/reflection_factory.dart';

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
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();

  String sql = """
{
  $nomeTabela${config.hasuraSufix}_by_pk(id: "$id") {
    ${returning ?? selectFields(entidade, subFields: subFields)}
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
  if (decode["data"]["$nomeTabela${config.hasuraSufix}_by_pk"] == null) {
    throw NaoEncontrado(nomeTabela);
  }
  T retorno = entidade.mapToClass(decode["data"]["$nomeTabela${config.hasuraSufix}_by_pk"]);
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
  if (first is Map) {
    return first.values.first;
  } else if (first is List) {
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
  List split = path.toLowerCase().split(".");
  Map currentValue = {operator: (value is String || value is DateTime) ? "\"$value\"" : value};
  for (var obj in split.reversed) {
    currentValue = {obj: currentValue};
  }
  return currentValue;
}

Map orderExpr(String path, String order) {
  List split = path.toLowerCase().split(".");
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
      campos += "${obj.name.toLowerCase()} ";
    }
  }
  return campos;
}

Future<T> insertHasura<T extends Entidade>(T entidade, {String? insertFields, String? excludFields, String? returning, bool subFields = false}) async {
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

  if (insertFields != null) {
    obj = manterCampos(insertFields, obj, "dataCriacao dataEdicao ativa");
  }

  if (excludFields != null) {
    excluirCampos(excludFields, obj);
  }

  var sql = """
mutation MyMutation {
  insert_$nomeentidade${config.hasuraSufix}_one(object:   ${obj.toString()}  ) {
    ${returning ?? selectFields(entidade, subFields: subFields)}
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

  T retorno = entidade.mapToClass(decode["data"]["insert_$nomeentidade${config.hasuraSufix}_one"]);

  return retorno;
}

Future<T> updateHasura<T extends Entidade>(T entidade, {String? updateFields, String? excludFields, String? returning, bool subFields = false}) async {
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

  if (updateFields != null) {
    obj = manterCampos(updateFields, obj, "dataEdicao");
  }

  if (excludFields != null) {
    excluirCampos(excludFields, obj);
  }

  var sql = """
mutation MyMutation {
  update_$nomeentidade${config.hasuraSufix}_by_pk(pk_columns: {id:   $id   }, _set:   ${obj.toString()}   ) {
    ${returning ?? selectFields(entidade, subFields: subFields)}
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

  T retorno = entidade.mapToClass(decode["data"]["update_$nomeentidade${config.hasuraSufix}_by_pk"]);

  return retorno;
}

trocarNomeEntidades(Entidade entidade, Map map) {
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();
  for (var obj in allFields) {
    if (reflector.canReflectType(obj.type.type)) {
      var valor = map.remove(obj.name);
      map["${obj.name}_id"] = valor?["id"];
    }
  }
}

trocarStrings(Map obj) {
  obj.forEach((key, value) {
    if (value is String || value is DateTime) {
      String value2 = value.toString().replaceAll(r'"', r'\"').replaceAll('\n', r'\n');
      obj[key] = '"$value2"';
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

manterCampos(String campos, Map obj, String obrigatorios) {
  Map obj2 = {};
  campos += " $obrigatorios";
  var split = campos.trim().toLowerCase().split(" ");
  for (var campo in split) {
    obj2[campo] = obj[campo];
  }
  return obj2;
}

excluirCampos(String campos, Map obj) {
  var split = campos.trim().toLowerCase().split(" ");
  for (var campo in split) {
    obj.remove(campo);
  }
}
