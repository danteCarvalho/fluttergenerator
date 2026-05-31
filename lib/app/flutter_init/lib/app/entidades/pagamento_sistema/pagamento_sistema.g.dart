// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento_sistema.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

PagamentoSistema _$PagamentoSistemaFromJson(Map json) => PagamentoSistema();

Map<String, dynamic> _$PagamentoSistemaToJson(PagamentoSistema instance) =>
    <String, dynamic>{};

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$PagamentoSistemaToJson(this as PagamentoSistema);
  }

  Map<String, dynamic> toJson() {
    return _$PagamentoSistemaToJson(this as PagamentoSistema);
  }

  String classToString() {
    return json.encode(this as PagamentoSistema);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = PagamentoSistema().reflect().allFields();
    for (var obj in allFields) {
      var name = obj.name;
      if (original.containsKey(name)) {
        map2[name] = original[name];
      } else if (original.containsKey(name.toString().toLowerCase())) {
        map2[name] = original[name.toString().toLowerCase()];
      }
    }
    return map2;
  }

  PagamentoSistema stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$PagamentoSistemaFromJson(map2);
  }

  PagamentoSistema mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$PagamentoSistemaFromJson(map2);
  }

  List<PagamentoSistema> listMapToListClass(List list) {
    List<PagamentoSistema> list2 = [];
    for (var obj in list) {
      list2.add(PagamentoSistema.fromJson(obj));
    }
    return list2;
  }

  List<PagamentoSistema> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<PagamentoSistema> reflect() {
    return PagamentoSistema().reflection;
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PagamentoSistema on _PagamentoSistemaBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
