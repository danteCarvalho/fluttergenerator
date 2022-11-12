// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento_sistema.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PagamentoSistema _$PagamentoSistemaFromJson(Map json) => PagamentoSistema()
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
  ..referencia = json['referencia'] as String?
  ..qrCode = json['qrCode'] as String?
  ..pago = json['pago'] as bool?
  ..dataConfirmado = json['dataConfirmado'] == null
      ? null
      : DateTime.parse(json['dataConfirmado'] as String)
  ..link = json['link'] as String?
  ..empresa =
      json['empresa'] == null ? null : Empresa.fromJson(json['empresa'] as Map)
  ..usuario =
      json['usuario'] == null ? null : Usuario.fromJson(json['usuario'] as Map)
  ..valor = (json['valor'] as num?)?.toDouble();

Map<String, dynamic> _$PagamentoSistemaToJson(PagamentoSistema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'referencia': instance.referencia,
      'qrCode': instance.qrCode,
      'pago': instance.pago,
      'dataConfirmado': instance.dataConfirmado?.toIso8601String(),
      'link': instance.link,
      'empresa': instance.empresa?.toJson(),
      'usuario': instance.usuario?.toJson(),
      'valor': instance.valor,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PagamentoSistema on _PagamentoSistemaBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
