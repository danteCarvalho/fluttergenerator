// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_link.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

AppLink _$AppLinkFromJson(Map json) => AppLink()
  ..id = json['id'] != null ? json['id'] as String? : null
  ..id2 = json['id2'] != null ? (json['id2'] as num).toInt() : null
  ..ativa = json['ativa'] != null ? json['ativa'] as bool? : null
  ..dataCriacao = json['dataCriacao'] != null
      ? DateTime.parse(json['dataCriacao'] as String)
      : null
  ..dataEdicao = json['dataEdicao'] != null
      ? DateTime.parse(json['dataEdicao'] as String)
      : null
  ..dataDelecao = json['dataDelecao'] != null
      ? DateTime.parse(json['dataDelecao'] as String)
      : null
  ..usuario =
      json['usuario'] != null ? Usuario.fromJson(json['usuario'] as Map) : null
  ..service = json['service'] != null ? json['service'] as String : "";

Map<String, dynamic> _$AppLinkToJson(AppLink instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'usuario': instance.usuario?.toJson(),
      'service': instance.service,
    };

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$AppLinkToJson(this as AppLink);
  }

  Map<String, dynamic> toJson() {
    return _$AppLinkToJson(this as AppLink);
  }

  String classToString() {
    return json.encode(this as AppLink);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = AppLink().reflect().allFields();
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

  AppLink stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$AppLinkFromJson(map2);
  }

  AppLink mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$AppLinkFromJson(map2);
  }

  List<AppLink> listMapToListClass(List list) {
    List<AppLink> list2 = [];
    for (var obj in list) {
      list2.add(AppLink.fromJson(obj));
    }
    return list2;
  }

  List<AppLink> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<AppLink> reflect() {
    return AppLink().reflection;
  }
}
