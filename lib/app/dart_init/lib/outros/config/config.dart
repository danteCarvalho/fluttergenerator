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
class Config  with _$Serial{
  bool arquivoConf =  const bool.fromEnvironment('arquivoConf', defaultValue: false);
  int portaServidor = const int.fromEnvironment('portaServidor', defaultValue: 7001 );
  String sembastDbName = const String.fromEnvironment("sembastDbName", defaultValue: "teste/teste.db");
  bool sslBanco =  const bool.fromEnvironment('sslBanco', defaultValue: false);
  String ipBanco = const String.fromEnvironment('ipBanco', defaultValue: 'localhost');
  int portaBanco = const int.fromEnvironment('portaBanco', defaultValue: 5431);
  String banco = const String.fromEnvironment('banco', defaultValue: 'postgres');
  String usuario = const String.fromEnvironment('usuario', defaultValue: 'postgres');
  String senha = const String.fromEnvironment('senha', defaultValue: 'postgrespassword');
  String schemeHasura = const String.fromEnvironment('schemeHasura', defaultValue: 'http');
  String ipHasura =  const String.fromEnvironment('ipHasura', defaultValue: 'localhost');
  int portaHasura = const int.fromEnvironment('portaHasura', defaultValue: 6001);
  String hasuraSource = const String.fromEnvironment('hasuraSource', defaultValue: 'default');
  String hasuraSufix = const String.fromEnvironment('hasuraSufix', defaultValue: '');
  String hasuraSharedSecret = const String.fromEnvironment('hasuraSharedSecret', defaultValue: 'tkGStmgfm6h8MV8IJNB60amcRZ93GHo8');
  String hasuraAdminSecret = const String.fromEnvironment('hasuraAdminSecret', defaultValue: 'myadminsecretkey');
  String googleSecretWeb = const String.fromEnvironment('googleSecretWeb', defaultValue: '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');
  String googleSecretOS = const String.fromEnvironment('googleSecretOS', defaultValue: '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');

  static fromJson(Map map) {
    return _$ConfigFromJson(map);
  }
}

configurar() async {

  if(Platform.environment.containsKey("PORT")){
    var porta = Platform.environment["PORT"];
    print("porta: $porta");
    config.portaServidor = int.parse(porta.toString());
  }

  if(config.arquivoConf == false){
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
