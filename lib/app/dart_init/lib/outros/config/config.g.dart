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
          defaultValue: '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')
  ..googleSecretOS = json['googleSecretOS'] != null
      ? json['googleSecretOS'] as String
      : const String.fromEnvironment('googleSecretOS',
          defaultValue: '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')
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
      : const String.fromEnvironment('emailServer', defaultValue: 'google')
  ..email = json['email'] != null
      ? json['email'] as String
      : const String.fromEnvironment('email',
          defaultValue: 'dantecarvalhocosta@gmail.com')
  ..emailPassword = json['emailPassword'] != null
      ? json['emailPassword'] as String
      : const String.fromEnvironment('emailPassword',
          defaultValue:
              'ya29.a0AcM612zNywRogmB4RZXBT_8pV8igC30opoOiFNMCP2ceRrUBPQOlGmTba2LFo0KbYsvrxMOaAYAGLvbBFtlVXjX6TtCyjtp_fgRnVaFmy9mFvcahC7waOFYc3OQh6bL7ESHzrlDKdorezQRp38vHcFA_Fq0di8-0YcrdOsXwaCgYKAQkSARESFQHGX2Mi3WELh7nx_cZMsTlavZJhbQ0175');

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
      'emailPassword': instance.emailPassword,
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
