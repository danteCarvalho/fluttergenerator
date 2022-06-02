// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Empresa _$EmpresaFromJson(Map json) => Empresa()
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
  ..valorPagamento = (json['valorPagamento'] as num?)?.toDouble()
  ..telefone = json['telefone'] as String?
  ..anydesk = json['anydesk'] as String?
  ..whatsapp = json['whatsapp'] as String?
  ..latitude = (json['latitude'] as num?)?.toDouble()
  ..longitude = (json['longitude'] as num?)?.toDouble()
  ..dataPagamento = json['dataPagamento'] == null
      ? null
      : DateTime.parse(json['dataPagamento'] as String)
  ..lastUpdate = json['lastUpdate'] == null
      ? null
      : DateTime.parse(json['lastUpdate'] as String)
  ..lastTry =
      json['lastTry'] == null ? null : DateTime.parse(json['lastTry'] as String)
  ..ultimoPagamentoCompleto = json['ultimoPagamentoCompleto'] == null
      ? null
      : DateTime.parse(json['ultimoPagamentoCompleto'] as String)
  ..ultimoPagamentoGerado = json['ultimoPagamentoGerado'] == null
      ? null
      : DateTime.parse(json['ultimoPagamentoGerado'] as String)
  ..ambienteProducao = json['ambienteProducao'] as bool?
  ..emissaoNormal = json['emissaoNormal'] as bool?
  ..impressaoNfce = json['impressaoNfce'] as bool?
  ..contingenciaAoDemorar = json['contingenciaAoDemorar'] as bool?
  ..justificativaContingencia = json['justificativaContingencia'] as String?
  ..tipoGeracaoNota = json['tipoGeracaoNota'] as String?
  ..csc = json['csc'] as String?
  ..idCsc = json['idCsc'] as String?
  ..serie = json['serie'] as int?
  ..numeroNotaFiscal = json['numeroNotaFiscal'] as int?
  ..numeroNotaFiscalHomologacao = json['numeroNotaFiscalHomologacao'] as int?
  ..cnpj = json['cnpj'] as String?
  ..razaoSocial = json['razaoSocial'] as String?
  ..municipio = json['municipio'] as String?
  ..estado = json['estado'] as String?
  ..cep = json['cep'] as String?
  ..bairro = json['bairro'] as String?
  ..logradouro = json['logradouro'] as String?
  ..numeroCasa = json['numeroCasa'] as String?
  ..inscricaoEstadual = json['inscricaoEstadual'] as String?
  ..regimeTributario = json['regimeTributario'] as String?
  ..nsu = json['nsu'] as String?;

Map<String, dynamic> _$EmpresaToJson(Empresa instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'nome': instance.nome,
      'valorPagamento': instance.valorPagamento,
      'telefone': instance.telefone,
      'anydesk': instance.anydesk,
      'whatsapp': instance.whatsapp,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'dataPagamento': instance.dataPagamento?.toIso8601String(),
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      'lastTry': instance.lastTry?.toIso8601String(),
      'ultimoPagamentoCompleto':
          instance.ultimoPagamentoCompleto?.toIso8601String(),
      'ultimoPagamentoGerado':
          instance.ultimoPagamentoGerado?.toIso8601String(),
      'ambienteProducao': instance.ambienteProducao,
      'emissaoNormal': instance.emissaoNormal,
      'impressaoNfce': instance.impressaoNfce,
      'contingenciaAoDemorar': instance.contingenciaAoDemorar,
      'justificativaContingencia': instance.justificativaContingencia,
      'tipoGeracaoNota': instance.tipoGeracaoNota,
      'csc': instance.csc,
      'idCsc': instance.idCsc,
      'serie': instance.serie,
      'numeroNotaFiscal': instance.numeroNotaFiscal,
      'numeroNotaFiscalHomologacao': instance.numeroNotaFiscalHomologacao,
      'cnpj': instance.cnpj,
      'razaoSocial': instance.razaoSocial,
      'municipio': instance.municipio,
      'estado': instance.estado,
      'cep': instance.cep,
      'bairro': instance.bairro,
      'logradouro': instance.logradouro,
      'numeroCasa': instance.numeroCasa,
      'inscricaoEstadual': instance.inscricaoEstadual,
      'regimeTributario': instance.regimeTributario,
      'nsu': instance.nsu,
    };
