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
class Config with _$Serial{
  bool arquivoConf =  const bool.fromEnvironment('arquivoConf', defaultValue: false);
  int portaApp = const int.fromEnvironment("portaApp", defaultValue: 8001);
  String sembastDbName = const String.fromEnvironment("sembastDbName", defaultValue: "testeSembast.db");
  String schemeServidor = const String.fromEnvironment('schemeServidor', defaultValue: 'http');
  String ipServidor = const String.fromEnvironment('ipServidor', defaultValue: 'localhost');
  int portaServidor = const int.fromEnvironment("portaServidor", defaultValue: 7001);
  String schemeHasura = const String.fromEnvironment('schemeHasura', defaultValue: 'http');
  String ipHasura = const String.fromEnvironment('ipHasura', defaultValue: 'localhost');
  int portaHasura = const int.fromEnvironment("portaHasura", defaultValue: 6001);
  String hasuraSource = const String.fromEnvironment('hasuraSource', defaultValue: 'default');
  String hasuraSufix = const String.fromEnvironment('hasuraSufix', defaultValue: '');
  String imageStorage = const String.fromEnvironment('imageStorage', defaultValue: 'amazon');


  static fromJson(Map map) {
    return _$ConfigFromJson(map);
  }

}

configurar() async {

  var classToMap = config.classToMap();
  for (var obj in classToMap.entries) {
    print("${obj.key}: ${obj.value}");
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

