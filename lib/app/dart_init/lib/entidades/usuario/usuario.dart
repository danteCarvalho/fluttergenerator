import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';

part 'usuario.g.dart';

part 'usuario.reflection.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
@EnableReflection()
@reflector
class Usuario extends Entidade {
  String? nome;
  String? senha;
  @Coluna(unique: true)
  String? email;
  @Coluna(unique: true)
  String? cpf;
  DateTime? dataNascimento;
  String? endereco;
  String? cep;
  String? cidade;
  String? estado;
  String? complemento;
  String? telefone;
  bool? admin;
  Empresa? empresa;
  double? valorPagamento;
  DateTime? dataPagamento;
  DateTime? ultimoPagamentoCompleto;
  DateTime? ultimoPagamentoGerado;


  static Usuario fromJson(Map map) {
    Map map2 = Usuario().dbMaptoClassMap(map);
    return _$UsuarioFromJson(map2);
  }

  static List<Usuario>? listMapToListClass2(List? list) {
    if (list == null) {
      return null;
    }
    List<Usuario> list2 = [];
    for (var obj in list) {
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _$UsuarioToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$UsuarioToJson(this);
  }

  @override
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Usuario().reflect().allFields();
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
  Usuario stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$UsuarioFromJson(map2);
  }

  @override
  Usuario mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$UsuarioFromJson(map2);
  }

  @override
  List<Usuario>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
