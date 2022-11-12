// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Imagem _$ImagemFromJson(Map json) => Imagem()
  ..id = json['id'] as String?
  ..id2 = json['id2'] as int?
  ..ativa = json['ativa'] as bool?
  ..dataCriacao = json['dataCriacao'] == null
      ? null
      : DateTime.parse(json['dataCriacao'] as String)
  ..dataEdicao = json['dataEdicao'] == null
      ? null
      : DateTime.parse(json['dataEdicao'] as String)
  ..dataDelecao = json['dataDelecao'] == null
      ? null
      : DateTime.parse(json['dataDelecao'] as String)
  ..value = json['value'] as String?
  ..name = json['name'] as String?
  ..size = json['size'] as int?;

Map<String, dynamic> _$ImagemToJson(Imagem instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'value': instance.value,
      'name': instance.name,
      'size': instance.size,
    };
