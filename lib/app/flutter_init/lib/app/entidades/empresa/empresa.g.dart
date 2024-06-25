// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Empresa _$EmpresaFromJson(Map json) => Empresa()
  ..id = json['id'] != null ? json['id'] as String? : null
  ..id2 = json['id2'] != null ? (json['id2'] as num).toInt() : null
  ..ativa = json['ativa'] != null ? json['ativa'] as bool? : null
  ..dataCriacao = json['dataCriacao'] != null
      ? DateTime.parse(json['dataCriacao'] as String)
      : null
  ..dataEdicao = json['dataEdicao'] != null
      ? DateTime.parse(json['dataEdicao'] as String)
      : null
  ..dataDelecao = json['dataDelecao'] != null
      ? DateTime.parse(json['dataDelecao'] as String)
      : null
  ..nome = json['nome'] != null ? json['nome'] as String? : null
  ..valorPagamento = json['valorPagamento'] != null
      ? (json['valorPagamento'] as num).toDouble()
      : null
  ..telefone = json['telefone'] != null ? json['telefone'] as String? : null
  ..anydesk = json['anydesk'] != null ? json['anydesk'] as String? : null
  ..whatsapp = json['whatsapp'] != null ? json['whatsapp'] as String? : null
  ..latitude =
      json['latitude'] != null ? (json['latitude'] as num).toDouble() : null
  ..longitude =
      json['longitude'] != null ? (json['longitude'] as num).toDouble() : null
  ..dataPagamento = json['dataPagamento'] != null
      ? DateTime.parse(json['dataPagamento'] as String)
      : null
  ..lastUpdate = json['lastUpdate'] != null
      ? DateTime.parse(json['lastUpdate'] as String)
      : null
  ..lastTry =
      json['lastTry'] != null ? DateTime.parse(json['lastTry'] as String) : null
  ..ultimoPagamentoCompleto = json['ultimoPagamentoCompleto'] != null
      ? DateTime.parse(json['ultimoPagamentoCompleto'] as String)
      : null
  ..ultimoPagamentoGerado = json['ultimoPagamentoGerado'] != null
      ? DateTime.parse(json['ultimoPagamentoGerado'] as String)
      : null
  ..ambienteProducao = json['ambienteProducao'] != null
      ? json['ambienteProducao'] as bool?
      : null
  ..emissaoNormal =
      json['emissaoNormal'] != null ? json['emissaoNormal'] as bool? : null
  ..impressaoNfce =
      json['impressaoNfce'] != null ? json['impressaoNfce'] as bool? : null
  ..contingenciaAoDemorar = json['contingenciaAoDemorar'] != null
      ? json['contingenciaAoDemorar'] as bool?
      : null
  ..justificativaContingencia = json['justificativaContingencia'] != null
      ? json['justificativaContingencia'] as String?
      : null
  ..tipoGeracaoNota = json['tipoGeracaoNota'] != null
      ? json['tipoGeracaoNota'] as String?
      : null
  ..csc = json['csc'] != null ? json['csc'] as String? : null
  ..idCsc = json['idCsc'] != null ? json['idCsc'] as String? : null
  ..serie = json['serie'] != null ? (json['serie'] as num).toInt() : null
  ..numeroNotaFiscal = json['numeroNotaFiscal'] != null
      ? (json['numeroNotaFiscal'] as num).toInt()
      : null
  ..numeroNotaFiscalHomologacao = json['numeroNotaFiscalHomologacao'] != null
      ? (json['numeroNotaFiscalHomologacao'] as num).toInt()
      : null
  ..cnpj = json['cnpj'] != null ? json['cnpj'] as String? : null
  ..razaoSocial =
      json['razaoSocial'] != null ? json['razaoSocial'] as String? : null
  ..municipio = json['municipio'] != null ? json['municipio'] as String? : null
  ..estado = json['estado'] != null ? json['estado'] as String? : null
  ..cep = json['cep'] != null ? json['cep'] as String? : null
  ..bairro = json['bairro'] != null ? json['bairro'] as String? : null
  ..logradouro =
      json['logradouro'] != null ? json['logradouro'] as String? : null
  ..numeroCasa =
      json['numeroCasa'] != null ? json['numeroCasa'] as String? : null
  ..inscricaoEstadual = json['inscricaoEstadual'] != null
      ? json['inscricaoEstadual'] as String?
      : null
  ..regimeTributario = json['regimeTributario'] != null
      ? json['regimeTributario'] as String?
      : null
  ..nsu = json['nsu'] != null ? json['nsu'] as String? : null;

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

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$EmpresaToJson(this as Empresa);
  }

  Map<String, dynamic> toJson() {
    return _$EmpresaToJson(this as Empresa);
  }

  String classToString() {
    return json.encode(this as Empresa);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Empresa().reflect().allFields();
    for (var obj in allFields) {
      var name = obj.name;
      if (original.containsKey(name)) {
        map2[name] = original[name];
      } else if (original.containsKey(name.toString().toLowerCase())) {
        map2[name] = original[name.toString().toLowerCase()];
      }
    }
    return map2;
  }

  Empresa stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$EmpresaFromJson(map2);
  }

  Empresa mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$EmpresaFromJson(map2);
  }

  List<Empresa> listMapToListClass(List list) {
    List<Empresa> list2 = [];
    for (var obj in list) {
      list2.add(Empresa.fromJson(obj));
    }
    return list2;
  }

  List<Empresa> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<Empresa> reflect() {
    return Empresa().reflection;
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Empresa on _EmpresaBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
