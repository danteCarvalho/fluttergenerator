// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagem.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Imagem _$ImagemFromJson(Map json) => Imagem()
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
  ..value = json['value'] != null ? json['value'] as String : ""
  ..name = json['name'] != null ? json['name'] as String : ""
  ..extension = json['extension'] != null ? json['extension'] as String : ""
  ..size = json['size'] != null ? (json['size'] as num).toInt() : 0;

Map<String, dynamic> _$ImagemToJson(Imagem instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'value': instance.value,
      'name': instance.name,
      'extension': instance.extension,
      'size': instance.size,
    };

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

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Imagem on _ImagemBase, Store {
  late final _$valueAtom = Atom(name: '_ImagemBase.value', context: context);

  @override
  String get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(String value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
