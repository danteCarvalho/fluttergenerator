// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) => Config()
  ..arquivoConf = json['arquivoConf'] as bool
  ..schemeServidor = json['schemeServidor'] as String
  ..schemeHasura = json['schemeHasura'] as String
  ..ipServidor = json['ipServidor'] as String
  ..ipHasura = json['ipHasura'] as String
  ..portaApp = json['portaApp'] as int
  ..portaServidor = json['portaServidor'] as int
  ..portaHasura = json['portaHasura'] as int
  ..sembastDbName = json['sembastDbName'] as String;

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'arquivoConf': instance.arquivoConf,
      'schemeServidor': instance.schemeServidor,
      'schemeHasura': instance.schemeHasura,
      'ipServidor': instance.ipServidor,
      'ipHasura': instance.ipHasura,
      'portaApp': instance.portaApp,
      'portaServidor': instance.portaServidor,
      'portaHasura': instance.portaHasura,
      'sembastDbName': instance.sembastDbName,
    };
