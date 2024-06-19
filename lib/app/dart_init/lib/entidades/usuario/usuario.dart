import 'dart:convert';

import 'package:dartutils/dartutils.dart';
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
@SerialAnnotation()
class Usuario extends Entidade with _$Serial {
  static Usuario fromJson(Map map) {
    Map map2 = Usuario().dbMaptoClassMap(map);
    return _$UsuarioFromJson(map2);
  }

  @Coluna(nullable: false)
  String? nome;
  String? senha;
  @Coluna(unique: true)
  String? email;
  @Coluna(unique: true)
  String cpfCnpj = "";
  DateTime dataNascimento = DateTime.now();
  String enderecoLogradouroRua = "";
  String numeroEndereco = "";
  String bairro = "";
  String cep = "";
  String cidade = "";
  String estado = "";
  String complemento = "";
  String telefone = "";
  bool? admin;
  Empresa? empresa;
  double? valorPagamento;
  DateTime? dataPagamento;
  DateTime? ultimoPagamentoCompleto;
  DateTime? ultimoPagamentoGerado;
}
