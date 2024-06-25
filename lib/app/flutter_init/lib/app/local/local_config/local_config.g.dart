// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_config.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

LocalConfig _$LocalConfigFromJson(Map json) => LocalConfig();

Map<String, dynamic> _$LocalConfigToJson(LocalConfig instance) =>
    <String, dynamic>{};

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$LocalConfigToJson(this as LocalConfig);
  }

  Map<String, dynamic> toJson() {
    return _$LocalConfigToJson(this as LocalConfig);
  }

  String classToString() {
    return json.encode(this as LocalConfig);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = LocalConfig().reflect().allFields();
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

  LocalConfig stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$LocalConfigFromJson(map2);
  }

  LocalConfig mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$LocalConfigFromJson(map2);
  }

  List<LocalConfig> listMapToListClass(List list) {
    List<LocalConfig> list2 = [];
    for (var obj in list) {
      list2.add(LocalConfig.fromJson(obj));
    }
    return list2;
  }

  List<LocalConfig> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<LocalConfig> reflect() {
    return LocalConfig().reflection;
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LocalConfig on _LocalConfigBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
