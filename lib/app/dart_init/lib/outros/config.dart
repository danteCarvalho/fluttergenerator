import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'config.g.dart';

Config config = Config();

@JsonSerializable(explicitToJson: true, anyMap: true)
class Config {
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

  Map toJson() {
    return _$ConfigToJson(this);
  }

  Map classToMap() {
    return _$ConfigToJson(this);
  }

  static stringToClass(String string) {
    Map map2 = json.decode(string);
    return _$ConfigFromJson(map2);
  }

  static mapToClass(Map map) {
    return _$ConfigFromJson(map);
  }

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
    config = Config.mapToClass(novo);
  } catch (e) {
    var encode = json.encode(Config());
    await file.writeAsString(encode);
    config = Config();
  }
  var encode = json.encode(config);
  await file.writeAsString(encode);
}
