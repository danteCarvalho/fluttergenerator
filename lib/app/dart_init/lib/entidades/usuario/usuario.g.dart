// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map json) => Usuario()
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
  ..nome = json['nome'] as String?
  ..senha = json['senha'] as String?
  ..email = json['email'] as String?
  ..cpf = json['cpf'] as String?
  ..dataNascimento = json['dataNascimento'] == null
      ? null
      : DateTime.parse(json['dataNascimento'] as String)
  ..endereco = json['endereco'] as String?
  ..cep = json['cep'] as String?
  ..cidade = json['cidade'] as String?
  ..estado = json['estado'] as String?
  ..complemento = json['complemento'] as String?
  ..telefone = json['telefone'] as String?
  ..admin = json['admin'] as bool?
  ..empresa =
      json['empresa'] == null ? null : Empresa.fromJson(json['empresa'] as Map)
  ..valorPagamento = (json['valorPagamento'] as num?)?.toDouble()
  ..dataPagamento = json['dataPagamento'] == null
      ? null
      : DateTime.parse(json['dataPagamento'] as String)
  ..ultimoPagamentoCompleto = json['ultimoPagamentoCompleto'] == null
      ? null
      : DateTime.parse(json['ultimoPagamentoCompleto'] as String)
  ..ultimoPagamentoGerado = json['ultimoPagamentoGerado'] == null
      ? null
      : DateTime.parse(json['ultimoPagamentoGerado'] as String);

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'nome': instance.nome,
      'senha': instance.senha,
      'email': instance.email,
      'cpf': instance.cpf,
      'dataNascimento': instance.dataNascimento?.toIso8601String(),
      'endereco': instance.endereco,
      'cep': instance.cep,
      'cidade': instance.cidade,
      'estado': instance.estado,
      'complemento': instance.complemento,
      'telefone': instance.telefone,
      'admin': instance.admin,
      'empresa': instance.empresa?.toJson(),
      'valorPagamento': instance.valorPagamento,
      'dataPagamento': instance.dataPagamento?.toIso8601String(),
      'ultimoPagamentoCompleto':
          instance.ultimoPagamentoCompleto?.toIso8601String(),
      'ultimoPagamentoGerado':
          instance.ultimoPagamentoGerado?.toIso8601String(),
    };
