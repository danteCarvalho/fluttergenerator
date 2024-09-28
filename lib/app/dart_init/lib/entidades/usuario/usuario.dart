import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';
import '../imagem/imagem.dart';

part 'usuario.g.dart';
part 'usuario.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class Usuario extends Entidade with _$Serial {
  static Usuario fromJson(Map map) {
    Map map2 = Usuario().dbMaptoClassMap(map);
    return _$UsuarioFromJson(map2);
  }

  @Coluna(nullable: false)
  String nome = "";
  @Coluna(tipo: "character varying")
  String senha = "";
  @Coluna(unique: true)
  String? username;
  @Coluna(unique: true)
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
  String preferenciaNome = "";
  Imagem? imagem;
  double latitude = 0;
  double longitude = 0;
  bool emailVerificado = false;
}
