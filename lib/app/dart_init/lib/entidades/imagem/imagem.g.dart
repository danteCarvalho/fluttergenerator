// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Imagem _$ImagemFromJson(Map json) => Imagem()
  ..id = json['id'] as String?
  ..id2 = json['id2'] as int?
  ..ativa = json['ativa'] as bool?
  ..dataCriacao = json['dataCriacao'] == null
      ? null
      : DateTime.parse(json['dataCriacao'] as String)
  ..dataEdicao = json['dataEdicao'] == null
      ? null
      : DateTime.parse(json['dataEdicao'] as String)
  ..dataDelecao = json['dataDelecao'] == null
      ? null
      : DateTime.parse(json['dataDelecao'] as String)
  ..value = json['value'] as String?
  ..name = json['name'] as String?
  ..size = json['size'] as int?;

Map<String, dynamic> _$ImagemToJson(Imagem instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'value': instance.value,
      'name': instance.name,
      'size': instance.size,
    };

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$ImagemToJson(this as Imagem);
  }

  Map<String, dynamic> toJson() {
    return _$ImagemToJson(this as Imagem);
  }

  String classToString() {
    return json.encode(this as Imagem);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Imagem().reflect().allFields();
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

  Imagem stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$ImagemFromJson(map2);
  }

  Imagem mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$ImagemFromJson(map2);
  }

  List<Imagem> listMapToListClass(List list) {
    List<Imagem> list2 = [];
    for (var obj in list) {
      list2.add(Imagem.fromJson(obj));
    }
    return list2;
  }

  List<Imagem> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<Imagem> reflect() {
    return Imagem().reflection;
  }
}
