import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';

part 'usuario.g.dart';
part 'usuario.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
@EnableReflection()
@reflector
@SerialAnnotation()
class Usuario extends _UsuarioBase with _$Usuario, _$Serial {

  static fromJson(Map map) {
    Map map2 = Usuario().dbMaptoClassMap(map);
    return _$UsuarioFromJson(map2);
  }


}


abstract class _UsuarioBase extends Entidade with Store {
  String? nome;
  String? senha;
  String? email;
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
}

  