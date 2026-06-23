import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:http/http.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../entidades/entidade.dart';
import '../outros/config/config.dart';
import '../outros/entidade_helper.dart';
import '../outros/excecoes.dart';

String sqlHasura<T extends Entidade>(
  T entidade,
  List<Map> whereList,
  List<String> selectList, {
  List<Map>? orderByList,
  int? inicio,
  int? maximo,
  String? excludFields,
}) {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  String whereString = where(whereList);
  String selectString = selectStatement(selectList);
  if (excludFields != null) {
    for (var obj in excludFields.split(" ")) {
      selectString = selectString.replaceAll(obj.toLowerCase(), "");
    }
  }
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

String customSqlHasura(
  String campo,
  List<Map> whereList,
  List<String> selectList, {
  List<Map>? orderByList,
  int? inicio,
  int? maximo,
  String? excludFields,
}) {
  String whereString = where(whereList);
  String selectString = selectStatement(selectList);
  if (excludFields != null) {
    for (var obj in excludFields.split(" ")) {
      selectString = selectString.replaceAll(obj.toLowerCase(), "");
    }
  }
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

Future<Map> _executarHasura(String sql, {Map<String, dynamic>? variables}) async {
  Map<String, dynamic> payload = {"query": sql};
  if (variables != null) {
    payload["variables"] = variables;
  }

  String myJson = json.encode(payload);

  Map<String, String> headers = {
    "X-Hasura-Admin-Secret": config.hasuraAdminSecret,
    "Content-Type": "application/json",
  };

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql");

  var response = await post(uri, body: myJson, headers: headers);

  Map decode = json.decode(response.body);
  if (decode.containsKey("errors")) {
    var error = decode["errors"][0];
    String? code = error["extensions"]?["code"];
    String? msg = error["message"];
    if (code == "constraint-violation") {
      throw ConstraintError(msg ?? "Constraint violation");
    }
    throw decode["errors"];
  }
  return decode;
}

Future<T> selectByIdHasura<T extends Entidade>(
  String id,
  T entidade, {
  String? returning,
  String? excludFields,
  bool subFields = false,
}) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();

  var returning2 = returning ?? selectFields(entidade, subFields: subFields);
  if (excludFields != null) {
    for (var obj in excludFields.split(" ")) {
      returning2 = returning2.replaceAll(obj.toLowerCase(), "");
    }
  }

  String sql = """
query GetById(\$id: uuid!) {
  $nomeTabela${config.hasuraSufix}_by_pk(id: \$id) {
    $returning2
  }
}
""";

  var decode = await _executarHasura(sql, variables: {"id": id});

  if (decode["data"]["$nomeTabela${config.hasuraSufix}_by_pk"] == null) {
    throw NaoEncontrado(nomeTabela);
  }
  T retorno = entidade.mapToClass(decode["data"]["$nomeTabela${config.hasuraSufix}_by_pk"]);
  return retorno;
}

Future<T> selectOneHasura<T extends Entidade>(String sql, T entidade) async {
  var decode = await _executarHasura(sql);
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
  var decode = await _executarHasura(sql);
  Map data = decode["data"];
  var first = data.values.first;
  if (first is Map) {
    return first.values.first;
  } else if (first is List) {
    return first;
  }
}

Future<List<T>> selectListHasura<T extends Entidade>(String sql, T entidade) async {
  var decode = await _executarHasura(sql);
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

String selectStatement(List<String> selectList) {
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
  Map currentValue = {
    operator: (value is String || value is DateTime)
        ? '"$value"'
        : value is List
            ? listValue(value)
            : value,
  };
  for (var obj in split.reversed) {
    currentValue = {obj: currentValue};
  }
  return currentValue;
}

Map orExpr(List<Map> list) {
  return {"_or": list};
}

Map andExpr(List<Map> list) {
  return {"_and": list};
}

String listValue(List values) {
  if (values.runtimeType.toString() == "List<String>") {
    return '["${values.join('","')}"]';
  } else {
    return values.join(",");
  }
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
      var reflectionFactory = ReflectionFactory();
      var typeString = obj.type.toString();
      if (obj.type.isPrimitiveType ||
          typeString == "DateTime" ||
          reflectionFactory.hasRegisterEnumReflection(obj.type.type)) {
        campos += "${obj.name.toLowerCase()} ";
      }
    }
  }
  return campos;
}

Future<T> insertHasura<T extends Entidade>(
  T entidade, {
  String? insertFields,
  String? excludFields,
  String? returning,
  bool subFields = false,
}) async {
  String nomeentidade = entidade.runtimeType.toString().toLowerCase();

  var data = DateTime.now();

  entidade.dataCriacao = data;
  entidade.dataEdicao = data;
  entidade.ativa = true;

  Map obj = entidade.classToMap();

  trocarNomeEntidades(entidade, obj);

  obj.remove("id");
  obj.remove("id2");

  obj = fieldsToLowerCase(obj);

  if (insertFields != null) {
    obj = manterCampos(insertFields, obj, "dataCriacao dataEdicao ativa");
  }

  if (excludFields != null) {
    excluirCampos(excludFields, obj);
  }

  var returning2 = returning ?? selectFields(entidade, subFields: subFields);
  if (excludFields != null) {
    for (var obj in excludFields.split(" ")) {
      returning2 = returning2.replaceAll(obj.toLowerCase(), "");
    }
  }

  var sql = """
mutation Insert(\$obj: $nomeentidade${config.hasuraSufix}_insert_input!) {
  insert_$nomeentidade${config.hasuraSufix}_one(object: \$obj) {
    $returning2
  }
}
""";

  var decode = await _executarHasura(sql, variables: {"obj": obj});

  T retorno = entidade.mapToClass(decode["data"]["insert_$nomeentidade${config.hasuraSufix}_one"]);

  return retorno;
}

Future<T> updateHasura<T extends Entidade>(
  T entidade, {
  String? updateFields,
  String? excludFields,
  String? returning,
  bool subFields = false,
}) async {
  String nomeentidade = entidade.runtimeType.toString().toLowerCase();

  if (entidade.id.isEmpty) {
    throw PararError("update sem id");
  }

  entidade.dataEdicao = DateTime.now();

  Map obj = entidade.classToMap();

  trocarNomeEntidades(entidade, obj);

  obj = fieldsToLowerCase(obj);
  String id = obj["id"];

  if (updateFields != null) {
    obj = manterCampos(updateFields, obj, "dataEdicao");
  }

  if (excludFields != null) {
    excluirCampos(excludFields, obj);
  }

  var returning2 = returning ?? selectFields(entidade, subFields: subFields);
  if (excludFields != null) {
    for (var obj in excludFields.split(" ")) {
      returning2 = returning2.replaceAll(obj.toLowerCase(), "");
    }
  }

  var sql = """
mutation Update(\$id: uuid!, \$set: $nomeentidade${config.hasuraSufix}_set_input!) {
  update_$nomeentidade${config.hasuraSufix}_by_pk(pk_columns: {id: \$id}, _set: \$set) {
    $returning2
  }
}
""";

  var decode = await _executarHasura(sql, variables: {"id": id, "set": obj});

  T retorno = entidade.mapToClass(decode["data"]["update_$nomeentidade${config.hasuraSufix}_by_pk"]);

  return retorno;
}

trocarNomeEntidades(Entidade entidade, Map map) {
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();
  for (var obj in allFields) {
    if (reflector.canReflectType(obj.type.type)) {
      var valor = map.remove(obj.name);
      map["${obj.name.toLowerCase()}_id"] = valor?["id"];
    }
  }
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
