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
  ..portaApp = (json['portaApp'] as num).toInt()
  ..portaServidor = (json['portaServidor'] as num).toInt()
  ..portaHasura = (json['portaHasura'] as num).toInt()
  ..sembastDbName = json['sembastDbName'] as String
  ..sqliteDbName = json['sqliteDbName'] as String;

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
      'sqliteDbName': instance.sqliteDbName,
    };
