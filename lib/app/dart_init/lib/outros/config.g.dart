// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Config _$ConfigFromJson(Map json) => Config()
  ..arquivoConf = json['arquivoConf'] as bool
  ..sslBanco = json['sslBanco'] as bool
  ..schemeHasura = json['schemeHasura'] as String
  ..ipHasura = json['ipHasura'] as String
  ..ipBanco = json['ipBanco'] as String
  ..portaServidor = json['portaServidor'] as int
  ..portaHasura = json['portaHasura'] as int
  ..portaBanco = json['portaBanco'] as int
  ..usuario = json['usuario'] as String
  ..senha = json['senha'] as String
  ..banco = json['banco'] as String
  ..hasuraSharedSecret = json['hasuraSharedSecret'] as String
  ..hasuraAdminSecret = json['hasuraAdminSecret'] as String
  ..googleSecretWeb = json['googleSecretWeb'] as String
  ..googleSecretOS = json['googleSecretOS'] as String;

Map<String, dynamic> _$ConfigToJson(Config instance) => <String, dynamic>{
      'arquivoConf': instance.arquivoConf,
      'sslBanco': instance.sslBanco,
      'schemeHasura': instance.schemeHasura,
      'ipHasura': instance.ipHasura,
      'ipBanco': instance.ipBanco,
      'portaServidor': instance.portaServidor,
      'portaHasura': instance.portaHasura,
      'portaBanco': instance.portaBanco,
      'usuario': instance.usuario,
      'senha': instance.senha,
      'banco': instance.banco,
      'hasuraSharedSecret': instance.hasuraSharedSecret,
      'hasuraAdminSecret': instance.hasuraAdminSecret,
      'googleSecretWeb': instance.googleSecretWeb,
      'googleSecretOS': instance.googleSecretOS,
    };
