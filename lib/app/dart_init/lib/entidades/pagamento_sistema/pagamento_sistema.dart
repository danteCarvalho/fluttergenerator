import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';
import '../usuario/usuario.dart';

part 'pagamento_sistema.g.dart';

part 'pagamento_sistema.reflection.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
@EnableReflection()
@reflector
class PagamentoSistema extends Entidade {
  @Coluna(nullable: false)
  String? referencia;
  String? qrCode;
  bool? pago;
  DateTime? dataConfirmado;
  String? link;
  Empresa? empresa;
  Usuario? usuario;
  @Coluna(nullable: false)
  double? valor;

  static PagamentoSistema fromJson(Map map) {
    Map map2 = PagamentoSistema().dbMaptoClassMap(map);
    return _$PagamentoSistemaFromJson(map2);
  }

  static List<PagamentoSistema>? listMapToListClass2(List? list) {
    if (list == null) {
      return null;
    }
    List<PagamentoSistema> list2 = [];
    for (var obj in list) {
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _$PagamentoSistemaToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PagamentoSistemaToJson(this);
  }

  @override
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

  @override
  String classToString() {
    return json.encode(this);
  }

  @override
  PagamentoSistema stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$PagamentoSistemaFromJson(map2);
  }

  @override
  PagamentoSistema mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$PagamentoSistemaFromJson(map2);
  }

  @override
  List<PagamentoSistema>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }

  @override
  ClassReflection<PagamentoSistema> reflect() {
    return reflection;
  }
}
