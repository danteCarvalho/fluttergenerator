import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:reflection_factory/reflection_factory.dart';
import '../usuario/usuario.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';

part 'pagamento.g.dart';

part 'pagamento.reflection.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
@EnableReflection()
@reflector
class Pagamento extends Entidade {
  String? referencia;
  String? qrCode;
  bool? pago;
  DateTime? dataConfirmado;
  String? link;
  Empresa? empresa;
  Usuario? usuario;
  double? valor;

  static Pagamento fromJson(Map map) {
    Map map2 = Pagamento().dbMaptoClassMap(map);
    return _$PagamentoFromJson(map2);
  }

  static List<Pagamento>? listMapToListClass2(List? list) {
    if (list == null) {
      return null;
    }
    List<Pagamento> list2 = [];
    for (var obj in list) {
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _$PagamentoToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PagamentoToJson(this);
  }

  @override
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

  @override
  String classToString() {
    return json.encode(this);
  }

  @override
  Pagamento stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$PagamentoFromJson(map2);
  }

  @override
  Pagamento mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$PagamentoFromJson(map2);
  }

  @override
  List<Pagamento>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }

  @override
  ClassReflection<Pagamento> reflect() {
    return reflection;
  }
}
