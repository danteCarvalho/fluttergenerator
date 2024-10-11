import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';
import '../imagem/imagem.dart';

part 'usuario.g.dart';
part 'usuario.reflection.g.dart';

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
  @observable
  String nome = "";
  @observable
  String senha = "";
  String? username;
  @observable
  String email = "";
  String? cpfCnpj;
  DateTime dataNascimento = DateTime.now();
  String enderecoLogradouroRua = "";
  String numeroEndereco = "";
  String bairro = "";
  String cep = "";
  String cidade = "";
  String estado = "";
  String complemento = "";
  String telefone = "";
  bool admin = false;
  Empresa? empresa;
  double? valorPagamento;
  DateTime? dataPagamento;
  DateTime? ultimoPagamentoCompleto;
  DateTime? ultimoPagamentoGerado;
  Imagem? imagem ;
  @observable
  double latitude = 0;
  @observable
  double longitude = 0;
  bool emailVerificado = false;
}


