import 'dart:convert';
import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../entidade_helper.dart';

part 'config.g.dart';

part 'config.reflection.g.dart';

Config config = Config();

@EnableReflection()
@reflector
@SerialAnnotation()
class Config with _$Serial {
  bool arquivoConf = const bool.fromEnvironment('arquivoConf', defaultValue: false);
  int portaServidor = const int.fromEnvironment('portaServidor', defaultValue: 7001);
  String sembastDbName = const String.fromEnvironment("sembastDbName", defaultValue: "teste/teste.db");
  bool sslBanco = const bool.fromEnvironment('sslBanco', defaultValue: false);
  String ipBanco = const String.fromEnvironment('ipBanco', defaultValue: 'localhost');
  int portaBanco = const int.fromEnvironment('portaBanco', defaultValue: 5431);
  String banco = const String.fromEnvironment('banco', defaultValue: 'postgres');
  String usuario = const String.fromEnvironment('usuario', defaultValue: 'postgres');
  String senha = const String.fromEnvironment('senha', defaultValue: 'postgrespassword');
  String schemeHasura = const String.fromEnvironment('schemeHasura', defaultValue: 'http');
  String ipHasura = const String.fromEnvironment('ipHasura', defaultValue: 'localhost');
  int portaHasura = const int.fromEnvironment('portaHasura', defaultValue: 6001);
  String hasuraSource = const String.fromEnvironment('hasuraSource', defaultValue: 'default');
  String hasuraSufix = const String.fromEnvironment('hasuraSufix', defaultValue: '');
  String hasuraSharedSecret = const String.fromEnvironment('hasuraSharedSecret', defaultValue: 'tkGStmgfm6h8MV8IJNB60amcRZ93GHo8');
  String hasuraAdminSecret = const String.fromEnvironment('hasuraAdminSecret', defaultValue: 'myadminsecretkey');
  String googleSecretWeb = const String.fromEnvironment('googleSecretWeb', defaultValue: 'DkW+Fa/vG2s0wcECx0vjSrPkbKOfMEd86SS9tXAxT6+SO3iPGsaGIbPhrlcdeci7Hpo0s28vfiB4dhkA28tSRg==');
  String googleSecretOS = const String.fromEnvironment('googleSecretOS', defaultValue: 'RqaJs+kJxK+tKHw1NtrmwdeG0fuPK28CQvaIskZoO8A48Zqh/pe391V0EQruxiFBy4e39NeAdxyLZ1vpJbFZmg==');
  String googleClientIdOS = const String.fromEnvironment('googleClientIdOS', defaultValue: '44265153130-ifekhq2splh4lcf25tuvhrikaha73dhf.apps.googleusercontent.com');
  String imageStorage = const String.fromEnvironment('imageStorage', defaultValue: 'amazon');
  String imageAccessKey = const String.fromEnvironment('imageAccessKey', defaultValue: 'hgVG0yGhI3ELhjU7ZwnRU2LiZWtkxCv90hKbL+IDdyYoe+0Z6/qf2jciVEP1yCu7');
  String imageSecretKey = const String.fromEnvironment('imageSecretKey', defaultValue: '/clI8ca/I1M8aUFnH7zt+EM+fKJEDxJ7NMJhCGoneZPexkno8sQEvtjgETV2vggGbGV+6rpbXEK8en2wDbTuCw==');
  String emailServer = const String.fromEnvironment('emailServer', defaultValue: 'google');
  String email = const String.fromEnvironment('email', defaultValue: 'dantecarvalhocosta@gmail.com');
  String emailPassword = const String.fromEnvironment('emailPassword', defaultValue: 'jep6+SmgYxNTbsQo+FysUy4lol1+97CNTevy0kwAkiby9gQxjhvxtG4bFluhjbPXRBK+7aZpWmZ2ZIzmzgaXgEzr9Mx+ChCSRbqk8RC226Ed4axBVsO9vQL/lwmRRpkRuoS7RfVthdqNnqzv7o9CEf30zm61mPhzvKYXaqzd3cqJwaWYfVY5Aw9qMnRu5aql9kPaGDVzFZCrQ+C4SHPPsLPTee9PKb+5ghNihnh8hEMOF2MdPgIEjhWLCUL5btCp4qqilmRswUYQ4OufYMXsF58LpZaY/iebL1hyRu3KVxis/X+J4mShLRlMD1KmpS06');

  static fromJson(Map map) {
    return _$ConfigFromJson(map);
  }
}

configurar({bool showConfig = false}) async {
  if (showConfig) {
    var classToMap = config.classToMap();
    for (var obj in classToMap.entries) {
      print("${obj.key}: ${obj.value}");
    }
  }

  if (Platform.environment.containsKey("PORT")) {
    var porta = Platform.environment["PORT"];
    print("porta: $porta");
    config.portaServidor = int.parse(porta.toString());
  }

  if (config.arquivoConf == false) {
    return;
  }
  var file = File("config.txt");
  if (!await file.exists()) {
    await file.create();
    var encode = json.encode(Config());
    await file.writeAsString(encode);
  }
  try {
    String s = file.readAsStringSync();
    var velho = json.decode(s);
    var novo = config.classToMap();
    novo.addAll(velho);
    config = config.mapToClass(novo);
  } catch (e) {
    var encode = json.encode(Config());
    await file.writeAsString(encode);
    config = Config();
  }
  var encode = json.encode(config);
  await file.writeAsString(encode);
}
