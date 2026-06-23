// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Pagamento _$PagamentoFromJson(Map json) => Pagamento()
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
  ..referencia = json['referencia'] != null ? json['referencia'] as String : ""
  ..qrCode = json['qrCode'] != null ? json['qrCode'] as String : ""
  ..pago = json['pago'] != null ? json['pago'] as bool : false
  ..dataConfirmado = json['dataConfirmado'] != null
      ? DateTime.parse(json['dataConfirmado'] as String)
      : initialTime
  ..link = json['link'] != null ? json['link'] as String : ""
  ..empresa =
      json['empresa'] != null ? Empresa.fromJson(json['empresa'] as Map) : null
  ..usuario =
      json['usuario'] != null ? Usuario.fromJson(json['usuario'] as Map) : null
  ..valor = json['valor'] != null ? (json['valor'] as num).toDouble() : 0;

Map<String, dynamic> _$PagamentoToJson(Pagamento instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao.toIso8601String(),
      'dataEdicao': instance.dataEdicao.toIso8601String(),
      'dataDelecao': instance.dataDelecao.toIso8601String(),
      'referencia': instance.referencia,
      'qrCode': instance.qrCode,
      'pago': instance.pago,
      'dataConfirmado': instance.dataConfirmado.toIso8601String(),
      'link': instance.link,
      'empresa': instance.empresa?.toJson(),
      'usuario': instance.usuario?.toJson(),
      'valor': instance.valor,
    };

Pagamento _$PagamentoFromMap(Map map) => Pagamento()
  ..id = map['id'] != null ? map['id'] : ""
  ..id2 = map['id2'] != null ? map['id2'] : 0
  ..ativa = map['ativa'] != null ? map['ativa'] : false
  ..dataCriacao = map['dataCriacao'] != null ? map['dataCriacao'] : initialTime
  ..dataEdicao = map['dataEdicao'] != null ? map['dataEdicao'] : initialTime
  ..dataDelecao = map['dataDelecao'] != null ? map['dataDelecao'] : initialTime
  ..referencia = map['referencia'] != null ? map['referencia'] : ""
  ..qrCode = map['qrCode'] != null ? map['qrCode'] : ""
  ..pago = map['pago'] != null ? map['pago'] : false
  ..dataConfirmado =
      map['dataConfirmado'] != null ? map['dataConfirmado'] : initialTime
  ..link = map['link'] != null ? map['link'] : ""
  ..empresa = map['empresa'] != null ? map['empresa'] : null
  ..usuario = map['usuario'] != null ? map['usuario'] : null
  ..valor = map['valor'] != null ? map['valor'] : 0;

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$PagamentoToJson(this as Pagamento);
  }

  Map<String, dynamic> toJson() {
    return _$PagamentoToJson(this as Pagamento);
  }

  String classToString() {
    return json.encode(this as Pagamento);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> matchKeysToFields(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Pagamento().reflect().allFields();
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

  Pagamento stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = matchKeysToFields(map2);
    return _$PagamentoFromJson(map2);
  }

  Pagamento mapToClass(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$PagamentoFromJson(map2);
  }

  Pagamento mapToClass2(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$PagamentoFromMap(map2);
  }

  List<Pagamento> listMapToListClass(List list) {
    List<Pagamento> list2 = [];
    for (var obj in list) {
      list2.add(Pagamento.fromJson(obj));
    }
    return list2;
  }

  List<Pagamento> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<Pagamento> reflect() {
    return Pagamento().reflection;
  }
}
