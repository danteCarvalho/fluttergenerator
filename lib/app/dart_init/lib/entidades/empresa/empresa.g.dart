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
  ..latitude =
      json['latitude'] != null ? (json['latitude'] as num).toDouble() : 0
  ..longitude =
      json['longitude'] != null ? (json['longitude'] as num).toDouble() : 0
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
  ..razaoSocial =
      json['razaoSocial'] != null ? json['razaoSocial'] as String : ""
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
      'ultimoPagamentoCompleto':
          instance.ultimoPagamentoCompleto.toIso8601String(),
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
