// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Empresa _$EmpresaFromJson(Map json) => Empresa();

Map<String, dynamic> _$EmpresaToJson(Empresa instance) => <String, dynamic>{};

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$EmpresaToJson(this as Empresa);
  }

  Map<String, dynamic> toJson() {
    return _$EmpresaToJson(this as Empresa);
  }

  String classToString() {
    return json.encode(this as Empresa);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Empresa().reflect().allFields();
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

  Empresa stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$EmpresaFromJson(map2);
  }

  Empresa mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$EmpresaFromJson(map2);
  }

  List<Empresa> listMapToListClass(List list) {
    List<Empresa> list2 = [];
    for (var obj in list) {
      list2.add(Empresa.fromJson(obj));
    }
    return list2;
  }

  List<Empresa> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<Empresa> reflect() {
    return Empresa().reflection;
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Empresa on _EmpresaBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
