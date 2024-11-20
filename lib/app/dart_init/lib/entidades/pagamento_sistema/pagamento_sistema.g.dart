// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento_sistema.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

PagamentoSistema _$PagamentoSistemaFromJson(Map json) => PagamentoSistema()
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

Map<String, dynamic> _$PagamentoSistemaToJson(PagamentoSistema instance) =>
    <String, dynamic>{
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

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$PagamentoSistemaToJson(this as PagamentoSistema);
  }

  Map<String, dynamic> toJson() {
    return _$PagamentoSistemaToJson(this as PagamentoSistema);
  }

  String classToString() {
    return json.encode(this as PagamentoSistema);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = PagamentoSistema().reflect().allFields();
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

  PagamentoSistema stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$PagamentoSistemaFromJson(map2);
  }

  PagamentoSistema mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$PagamentoSistemaFromJson(map2);
  }

  List<PagamentoSistema> listMapToListClass(List list) {
    List<PagamentoSistema> list2 = [];
    for (var obj in list) {
      list2.add(PagamentoSistema.fromJson(obj));
    }
    return list2;
  }

  List<PagamentoSistema> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<PagamentoSistema> reflect() {
    return PagamentoSistema().reflection;
  }
}
