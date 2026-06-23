// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) => Config()
  ..arquivoConf = json['arquivoConf'] != null
      ? json['arquivoConf'] as bool
      : const bool.fromEnvironment('arquivoConf', defaultValue: false)
  ..portaServidor = json['portaServidor'] != null
      ? (json['portaServidor'] as num).toInt()
      : const int.fromEnvironment('portaServidor', defaultValue: 7001)
  ..sembastDbName = json['sembastDbName'] != null
      ? json['sembastDbName'] as String
      : const String.fromEnvironment("sembastDbName",
          defaultValue: "teste/teste.db")
  ..sslBanco = json['sslBanco'] != null
      ? json['sslBanco'] as bool
      : const bool.fromEnvironment('sslBanco', defaultValue: false)
  ..ipBanco = json['ipBanco'] != null
      ? json['ipBanco'] as String
      : const String.fromEnvironment('ipBanco', defaultValue: 'localhost')
  ..portaBanco = json['portaBanco'] != null
      ? (json['portaBanco'] as num).toInt()
      : const int.fromEnvironment('portaBanco', defaultValue: 5431)
  ..banco = json['banco'] != null
      ? json['banco'] as String
      : const String.fromEnvironment('banco', defaultValue: 'postgres')
  ..usuario = json['usuario'] != null
      ? json['usuario'] as String
      : const String.fromEnvironment('usuario', defaultValue: 'postgres')
  ..senha = json['senha'] != null
      ? json['senha'] as String
      : const String.fromEnvironment('senha', defaultValue: 'postgrespassword')
  ..schemeHasura = json['schemeHasura'] != null
      ? json['schemeHasura'] as String
      : const String.fromEnvironment('schemeHasura', defaultValue: 'http')
  ..ipHasura = json['ipHasura'] != null
      ? json['ipHasura'] as String
      : const String.fromEnvironment('ipHasura', defaultValue: 'localhost')
  ..portaHasura = json['portaHasura'] != null
      ? (json['portaHasura'] as num).toInt()
      : const int.fromEnvironment('portaHasura', defaultValue: 6001)
  ..hasuraSource = json['hasuraSource'] != null
      ? json['hasuraSource'] as String
      : const String.fromEnvironment('hasuraSource', defaultValue: 'default')
  ..hasuraSufix = json['hasuraSufix'] != null
      ? json['hasuraSufix'] as String
      : const String.fromEnvironment('hasuraSufix', defaultValue: '')
  ..hasuraSharedSecret = json['hasuraSharedSecret'] != null
      ? json['hasuraSharedSecret'] as String
      : const String.fromEnvironment('hasuraSharedSecret',
          defaultValue: 'tkGStmgfm6h8MV8IJNB60amcRZ93GHo8')
  ..hasuraAdminSecret = json['hasuraAdminSecret'] != null
      ? json['hasuraAdminSecret'] as String
      : const String.fromEnvironment('hasuraAdminSecret',
          defaultValue: 'myadminsecretkey')
  ..googleSecretWeb = json['googleSecretWeb'] != null
      ? json['googleSecretWeb'] as String
      : const String.fromEnvironment('googleSecretWeb',
          defaultValue:
              'DkW+Fa/vG2s0wcECx0vjSrPkbKOfMEd86SS9tXAxT6+SO3iPGsaGIbPhrlcdeci7Hpo0s28vfiB4dhkA28tSRg==')
  ..googleSecretOS = json['googleSecretOS'] != null
      ? json['googleSecretOS'] as String
      : const String.fromEnvironment('googleSecretOS',
          defaultValue:
              'RqaJs+kJxK+tKHw1NtrmwdeG0fuPK28CQvaIskZoO8A48Zqh/pe391V0EQruxiFBy4e39NeAdxyLZ1vpJbFZmg==')
  ..googleClientIdOS = json['googleClientIdOS'] != null
      ? json['googleClientIdOS'] as String
      : const String.fromEnvironment('googleClientIdOS',
          defaultValue:
              '44265153130-ifekhq2splh4lcf25tuvhrikaha73dhf.apps.googleusercontent.com')
  ..imageStorage = json['imageStorage'] != null
      ? json['imageStorage'] as String
      : const String.fromEnvironment('imageStorage', defaultValue: 'amazon')
  ..imageAccessKey = json['imageAccessKey'] != null
      ? json['imageAccessKey'] as String
      : const String.fromEnvironment('imageAccessKey',
          defaultValue:
              'hgVG0yGhI3ELhjU7ZwnRU2LiZWtkxCv90hKbL+IDdyYoe+0Z6/qf2jciVEP1yCu7')
  ..imageSecretKey = json['imageSecretKey'] != null
      ? json['imageSecretKey'] as String
      : const String.fromEnvironment('imageSecretKey',
          defaultValue:
              '/clI8ca/I1M8aUFnH7zt+EM+fKJEDxJ7NMJhCGoneZPexkno8sQEvtjgETV2vggGbGV+6rpbXEK8en2wDbTuCw==')
  ..emailServer = json['emailServer'] != null
      ? json['emailServer'] as String
      : const String.fromEnvironment('emailServer', defaultValue: 'amazon')
  ..email = json['email'] != null
      ? json['email'] as String
      : const String.fromEnvironment('email',
          defaultValue: 'teste@agentech.com.br')
  ..emailUsername = json['emailUsername'] != null
      ? json['emailUsername'] as String
      : const String.fromEnvironment('emailUsername',
          defaultValue: 'AKIARXTC5FOT5AS6PLMD')
  ..emailPassword = json['emailPassword'] != null
      ? json['emailPassword'] as String
      : const String.fromEnvironment('emailPassword',
          defaultValue:
              'vZ4YBYbLoBnPbQEXAmz+jCAgg5cC+n6EzfolTN668xkyYEVooMfAwLZeNCN1p8HhcC/bXAFKJxqEKR0+vCNWfA==');

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'arquivoConf': instance.arquivoConf,
      'portaServidor': instance.portaServidor,
      'sembastDbName': instance.sembastDbName,
      'sslBanco': instance.sslBanco,
      'ipBanco': instance.ipBanco,
      'portaBanco': instance.portaBanco,
      'banco': instance.banco,
      'usuario': instance.usuario,
      'senha': instance.senha,
      'schemeHasura': instance.schemeHasura,
      'ipHasura': instance.ipHasura,
      'portaHasura': instance.portaHasura,
      'hasuraSource': instance.hasuraSource,
      'hasuraSufix': instance.hasuraSufix,
      'hasuraSharedSecret': instance.hasuraSharedSecret,
      'hasuraAdminSecret': instance.hasuraAdminSecret,
      'googleSecretWeb': instance.googleSecretWeb,
      'googleSecretOS': instance.googleSecretOS,
      'googleClientIdOS': instance.googleClientIdOS,
      'imageStorage': instance.imageStorage,
      'imageAccessKey': instance.imageAccessKey,
      'imageSecretKey': instance.imageSecretKey,
      'emailServer': instance.emailServer,
      'email': instance.email,
      'emailUsername': instance.emailUsername,
      'emailPassword': instance.emailPassword,
    };

Config _$ConfigFromMap(Map map) => Config()
  ..arquivoConf = map['arquivoConf'] != null
      ? map['arquivoConf']
      : const bool.fromEnvironment('arquivoConf', defaultValue: false)
  ..portaServidor = map['portaServidor'] != null
      ? map['portaServidor']
      : const int.fromEnvironment('portaServidor', defaultValue: 7001)
  ..sembastDbName = map['sembastDbName'] != null
      ? map['sembastDbName']
      : const String.fromEnvironment("sembastDbName",
          defaultValue: "teste/teste.db")
  ..sslBanco = map['sslBanco'] != null
      ? map['sslBanco']
      : const bool.fromEnvironment('sslBanco', defaultValue: false)
  ..ipBanco = map['ipBanco'] != null
      ? map['ipBanco']
      : const String.fromEnvironment('ipBanco', defaultValue: 'localhost')
  ..portaBanco = map['portaBanco'] != null
      ? map['portaBanco']
      : const int.fromEnvironment('portaBanco', defaultValue: 5431)
  ..banco = map['banco'] != null
      ? map['banco']
      : const String.fromEnvironment('banco', defaultValue: 'postgres')
  ..usuario = map['usuario'] != null
      ? map['usuario']
      : const String.fromEnvironment('usuario', defaultValue: 'postgres')
  ..senha = map['senha'] != null
      ? map['senha']
      : const String.fromEnvironment('senha', defaultValue: 'postgrespassword')
  ..schemeHasura = map['schemeHasura'] != null
      ? map['schemeHasura']
      : const String.fromEnvironment('schemeHasura', defaultValue: 'http')
  ..ipHasura = map['ipHasura'] != null
      ? map['ipHasura']
      : const String.fromEnvironment('ipHasura', defaultValue: 'localhost')
  ..portaHasura = map['portaHasura'] != null
      ? map['portaHasura']
      : const int.fromEnvironment('portaHasura', defaultValue: 6001)
  ..hasuraSource = map['hasuraSource'] != null
      ? map['hasuraSource']
      : const String.fromEnvironment('hasuraSource', defaultValue: 'default')
  ..hasuraSufix = map['hasuraSufix'] != null
      ? map['hasuraSufix']
      : const String.fromEnvironment('hasuraSufix', defaultValue: '')
  ..hasuraSharedSecret = map['hasuraSharedSecret'] != null
      ? map['hasuraSharedSecret']
      : const String.fromEnvironment('hasuraSharedSecret',
          defaultValue: 'tkGStmgfm6h8MV8IJNB60amcRZ93GHo8')
  ..hasuraAdminSecret = map['hasuraAdminSecret'] != null
      ? map['hasuraAdminSecret']
      : const String.fromEnvironment('hasuraAdminSecret',
          defaultValue: 'myadminsecretkey')
  ..googleSecretWeb = map['googleSecretWeb'] != null
      ? map['googleSecretWeb']
      : const String.fromEnvironment('googleSecretWeb',
          defaultValue:
              'DkW+Fa/vG2s0wcECx0vjSrPkbKOfMEd86SS9tXAxT6+SO3iPGsaGIbPhrlcdeci7Hpo0s28vfiB4dhkA28tSRg==')
  ..googleSecretOS = map['googleSecretOS'] != null
      ? map['googleSecretOS']
      : const String.fromEnvironment('googleSecretOS',
          defaultValue:
              'RqaJs+kJxK+tKHw1NtrmwdeG0fuPK28CQvaIskZoO8A48Zqh/pe391V0EQruxiFBy4e39NeAdxyLZ1vpJbFZmg==')
  ..googleClientIdOS = map['googleClientIdOS'] != null
      ? map['googleClientIdOS']
      : const String.fromEnvironment('googleClientIdOS',
          defaultValue:
              '44265153130-ifekhq2splh4lcf25tuvhrikaha73dhf.apps.googleusercontent.com')
  ..imageStorage = map['imageStorage'] != null
      ? map['imageStorage']
      : const String.fromEnvironment('imageStorage', defaultValue: 'amazon')
  ..imageAccessKey = map['imageAccessKey'] != null
      ? map['imageAccessKey']
      : const String.fromEnvironment('imageAccessKey',
          defaultValue:
              'hgVG0yGhI3ELhjU7ZwnRU2LiZWtkxCv90hKbL+IDdyYoe+0Z6/qf2jciVEP1yCu7')
  ..imageSecretKey = map['imageSecretKey'] != null
      ? map['imageSecretKey']
      : const String.fromEnvironment('imageSecretKey',
          defaultValue:
              '/clI8ca/I1M8aUFnH7zt+EM+fKJEDxJ7NMJhCGoneZPexkno8sQEvtjgETV2vggGbGV+6rpbXEK8en2wDbTuCw==')
  ..emailServer = map['emailServer'] != null
      ? map['emailServer']
      : const String.fromEnvironment('emailServer', defaultValue: 'amazon')
  ..email = map['email'] != null
      ? map['email']
      : const String.fromEnvironment('email',
          defaultValue: 'teste@agentech.com.br')
  ..emailUsername = map['emailUsername'] != null
      ? map['emailUsername']
      : const String.fromEnvironment('emailUsername',
          defaultValue: 'AKIARXTC5FOT5AS6PLMD')
  ..emailPassword = map['emailPassword'] != null
      ? map['emailPassword']
      : const String.fromEnvironment('emailPassword',
          defaultValue:
              'vZ4YBYbLoBnPbQEXAmz+jCAgg5cC+n6EzfolTN668xkyYEVooMfAwLZeNCN1p8HhcC/bXAFKJxqEKR0+vCNWfA==');

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

  Map<String, dynamic> matchKeysToFields(Map original) {
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
    map2 = matchKeysToFields(map2);
    return _$ConfigFromJson(map2);
  }

  Config mapToClass(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$ConfigFromJson(map2);
  }

  Config mapToClass2(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$ConfigFromMap(map2);
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
