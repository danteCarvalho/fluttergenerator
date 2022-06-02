import 'dart:convert';
import 'dart:io';

import 'package:json_annotation/json_annotation.dart';

part 'config.g.dart';


Config config = Config();

@JsonSerializable(explicitToJson: true, anyMap: true)
class Config {
  bool arquivoConf =  const bool.fromEnvironment('arquivoConf', defaultValue: false);
  String schemeServidor = const String.fromEnvironment('schemeServidor', defaultValue: 'http');
  String schemeHasura = const String.fromEnvironment('schemeHasura', defaultValue: 'http');
  String ipServidor = const String.fromEnvironment('ipServidor', defaultValue: 'localhost');
  String ipHasura = const String.fromEnvironment('ipHasura', defaultValue: 'localhost');
  int portaApp = const int.fromEnvironment("portaApp", defaultValue: 8001);
  int portaServidor = const int.fromEnvironment("portaServidor", defaultValue: 7001);
  int portaHasura = const int.fromEnvironment("portaHasura", defaultValue: 6001);
  String sembastDbName = const String.fromEnvironment("sembastDbName", defaultValue: "teste.db");

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

