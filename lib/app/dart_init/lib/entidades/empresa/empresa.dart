import 'dart:convert';
import 'dart:core';
import '../../outros/metodos_estaticos.dart';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../entidade.dart';

part 'empresa.g.dart';
part 'empresa.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class Empresa extends Entidade with _$Serial {
  static Empresa fromJson(Map map) {
    Map map2 = Empresa().dbMaptoClassMap(map);
    return _$EmpresaFromJson(map2);
  }

  String nome = "";
  double valorPagamento = 0;
  String telefone = "";
  String anydesk = "";
  String whatsapp = "";
  double latitude = 0;
  double longitude = 0;
  DateTime dataPagamento = initialTime;
  DateTime ultimoPagamentoCompleto = initialTime;
  DateTime ultimoPagamentoGerado = initialTime;
  String cnpj = "";
  String razaoSocial = "";
  String municipio = "";
  String estado = "";
  String cep = "";
  String bairro = "";
  String logradouro = "";
  String numeroCasa = "";
}
