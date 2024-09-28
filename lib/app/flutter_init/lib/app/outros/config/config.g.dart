// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) => Config()
  ..arquivoConf = json['arquivoConf'] != null
      ? json['arquivoConf'] as bool
      : const bool.fromEnvironment('arquivoConf', defaultValue: false)
  ..portaApp = json['portaApp'] != null
      ? (json['portaApp'] as num).toInt()
      : const int.fromEnvironment("portaApp", defaultValue: 8001)
  ..sembastDbName = json['sembastDbName'] != null
      ? json['sembastDbName'] as String
      : const String.fromEnvironment("sembastDbName",
          defaultValue: "testeSembast.db")
  ..schemeServidor = json['schemeServidor'] != null
      ? json['schemeServidor'] as String
      : const String.fromEnvironment('schemeServidor', defaultValue: 'http')
  ..ipServidor = json['ipServidor'] != null
      ? json['ipServidor'] as String
      : const String.fromEnvironment('ipServidor', defaultValue: 'localhost')
  ..portaServidor = json['portaServidor'] != null
      ? (json['portaServidor'] as num).toInt()
      : const int.fromEnvironment("portaServidor", defaultValue: 7001)
  ..schemeHasura = json['schemeHasura'] != null
      ? json['schemeHasura'] as String
      : const String.fromEnvironment('schemeHasura', defaultValue: 'http')
  ..ipHasura = json['ipHasura'] != null
      ? json['ipHasura'] as String
      : const String.fromEnvironment('ipHasura', defaultValue: 'localhost')
  ..portaHasura = json['portaHasura'] != null
      ? (json['portaHasura'] as num).toInt()
      : const int.fromEnvironment("portaHasura", defaultValue: 6001)
  ..hasuraSource = json['hasuraSource'] != null
      ? json['hasuraSource'] as String
      : const String.fromEnvironment('hasuraSource', defaultValue: 'default')
  ..hasuraSufix = json['hasuraSufix'] != null
      ? json['hasuraSufix'] as String
      : const String.fromEnvironment('hasuraSufix', defaultValue: '')
  ..imageStorage = json['imageStorage'] != null
      ? json['imageStorage'] as String
      : const String.fromEnvironment('imageStorage', defaultValue: 'server');

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'arquivoConf': instance.arquivoConf,
      'portaApp': instance.portaApp,
      'sembastDbName': instance.sembastDbName,
      'schemeServidor': instance.schemeServidor,
      'ipServidor': instance.ipServidor,
      'portaServidor': instance.portaServidor,
      'schemeHasura': instance.schemeHasura,
      'ipHasura': instance.ipHasura,
      'portaHasura': instance.portaHasura,
      'hasuraSource': instance.hasuraSource,
      'hasuraSufix': instance.hasuraSufix,
      'imageStorage': instance.imageStorage,
    };

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$ConfigToJson(this as Config);
  }

  Map<String, dynamic> toJson() {
    return _$ConfigToJson(this as Config);
  }

  String classToString() {
    return json.encode(this as Config);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Config().reflect().allFields();
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

  Config stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$ConfigFromJson(map2);
  }

  Config mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$ConfigFromJson(map2);
  }

  List<Config> listMapToListClass(List list) {
    List<Config> list2 = [];
    for (var obj in list) {
      list2.add(Config.fromJson(obj));
    }
    return list2;
  }

  List<Config> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<Config> reflect() {
    return Config().reflection;
  }
}
