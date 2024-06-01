// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Pagamento _$PagamentoFromJson(Map json) => Pagamento()
  ..id = json['id'] as String?
  ..id2 = (json['id2'] as num?)?.toInt()
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

Map<String, dynamic> _$PagamentoToJson(Pagamento instance) => <String, dynamic>{
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
// MyCustomGenerator
// **************************************************************************

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

  Map<String, dynamic> dbMaptoClassMap(Map original) {
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
    map2 = dbMaptoClassMap(map2);
    return _$PagamentoFromJson(map2);
  }

  Pagamento mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$PagamentoFromJson(map2);
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
