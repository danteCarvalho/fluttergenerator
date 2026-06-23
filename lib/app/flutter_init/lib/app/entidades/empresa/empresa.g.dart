// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empresa.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Empresa _$EmpresaFromJson(Map json) => Empresa()
  ..id = json['id'] != null ? json['id'] as String : ""
  ..id2 = json['id2'] != null ? (json['id2'] as num).toInt() : 0
  ..ativa = json['ativa'] != null ? json['ativa'] as bool : false
  ..dataCriacao = json['dataCriacao'] != null
      ? DateTime.parse(json['dataCriacao'] as String)
      : initialTime
  ..dataEdicao = json['dataEdicao'] != null
      ? DateTime.parse(json['dataEdicao'] as String)
      : initialTime
  ..dataDelecao = json['dataDelecao'] != null
      ? DateTime.parse(json['dataDelecao'] as String)
      : initialTime
  ..nome = json['nome'] != null ? json['nome'] as String : ""
  ..valorPagamento = json['valorPagamento'] != null
      ? (json['valorPagamento'] as num).toDouble()
      : 0
  ..telefone = json['telefone'] != null ? json['telefone'] as String : ""
  ..anydesk = json['anydesk'] != null ? json['anydesk'] as String : ""
  ..whatsapp = json['whatsapp'] != null ? json['whatsapp'] as String : ""
  ..latitude = json['latitude'] != null
      ? (json['latitude'] as num).toDouble()
      : 0
  ..longitude = json['longitude'] != null
      ? (json['longitude'] as num).toDouble()
      : 0
  ..dataPagamento = json['dataPagamento'] != null
      ? DateTime.parse(json['dataPagamento'] as String)
      : initialTime
  ..ultimoPagamentoCompleto = json['ultimoPagamentoCompleto'] != null
      ? DateTime.parse(json['ultimoPagamentoCompleto'] as String)
      : initialTime
  ..ultimoPagamentoGerado = json['ultimoPagamentoGerado'] != null
      ? DateTime.parse(json['ultimoPagamentoGerado'] as String)
      : initialTime
  ..cnpj = json['cnpj'] != null ? json['cnpj'] as String : ""
  ..razaoSocial = json['razaoSocial'] != null
      ? json['razaoSocial'] as String
      : ""
  ..municipio = json['municipio'] != null ? json['municipio'] as String : ""
  ..estado = json['estado'] != null ? json['estado'] as String : ""
  ..cep = json['cep'] != null ? json['cep'] as String : ""
  ..bairro = json['bairro'] != null ? json['bairro'] as String : ""
  ..logradouro = json['logradouro'] != null ? json['logradouro'] as String : ""
  ..numeroCasa = json['numeroCasa'] != null ? json['numeroCasa'] as String : "";

Map<String, dynamic> _$EmpresaToJson(Empresa instance) => <String, dynamic>{
  'id': instance.id,
  'id2': instance.id2,
  'ativa': instance.ativa,
  'dataCriacao': instance.dataCriacao.toIso8601String(),
  'dataEdicao': instance.dataEdicao.toIso8601String(),
  'dataDelecao': instance.dataDelecao.toIso8601String(),
  'nome': instance.nome,
  'valorPagamento': instance.valorPagamento,
  'telefone': instance.telefone,
  'anydesk': instance.anydesk,
  'whatsapp': instance.whatsapp,
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'dataPagamento': instance.dataPagamento.toIso8601String(),
  'ultimoPagamentoCompleto': instance.ultimoPagamentoCompleto.toIso8601String(),
  'ultimoPagamentoGerado': instance.ultimoPagamentoGerado.toIso8601String(),
  'cnpj': instance.cnpj,
  'razaoSocial': instance.razaoSocial,
  'municipio': instance.municipio,
  'estado': instance.estado,
  'cep': instance.cep,
  'bairro': instance.bairro,
  'logradouro': instance.logradouro,
  'numeroCasa': instance.numeroCasa,
};

Empresa _$EmpresaFromMap(Map map) => Empresa()
  ..id = map['id'] != null ? map['id'] : ""
  ..id2 = map['id2'] != null ? map['id2'] : 0
  ..ativa = map['ativa'] != null ? map['ativa'] : false
  ..dataCriacao = map['dataCriacao'] != null ? map['dataCriacao'] : initialTime
  ..dataEdicao = map['dataEdicao'] != null ? map['dataEdicao'] : initialTime
  ..dataDelecao = map['dataDelecao'] != null ? map['dataDelecao'] : initialTime
  ..nome = map['nome'] != null ? map['nome'] : ""
  ..valorPagamento = map['valorPagamento'] != null ? map['valorPagamento'] : 0
  ..telefone = map['telefone'] != null ? map['telefone'] : ""
  ..anydesk = map['anydesk'] != null ? map['anydesk'] : ""
  ..whatsapp = map['whatsapp'] != null ? map['whatsapp'] : ""
  ..latitude = map['latitude'] != null ? map['latitude'] : 0
  ..longitude = map['longitude'] != null ? map['longitude'] : 0
  ..dataPagamento = map['dataPagamento'] != null
      ? map['dataPagamento']
      : initialTime
  ..ultimoPagamentoCompleto = map['ultimoPagamentoCompleto'] != null
      ? map['ultimoPagamentoCompleto']
      : initialTime
  ..ultimoPagamentoGerado = map['ultimoPagamentoGerado'] != null
      ? map['ultimoPagamentoGerado']
      : initialTime
  ..cnpj = map['cnpj'] != null ? map['cnpj'] : ""
  ..razaoSocial = map['razaoSocial'] != null ? map['razaoSocial'] : ""
  ..municipio = map['municipio'] != null ? map['municipio'] : ""
  ..estado = map['estado'] != null ? map['estado'] : ""
  ..cep = map['cep'] != null ? map['cep'] : ""
  ..bairro = map['bairro'] != null ? map['bairro'] : ""
  ..logradouro = map['logradouro'] != null ? map['logradouro'] : ""
  ..numeroCasa = map['numeroCasa'] != null ? map['numeroCasa'] : "";

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

  Map<String, dynamic> matchKeysToFields(Map original) {
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
    map2 = matchKeysToFields(map2);
    return _$EmpresaFromJson(map2);
  }

  Empresa mapToClass(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$EmpresaFromJson(map2);
  }

  Empresa mapToClass2(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$EmpresaFromMap(map2);
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
