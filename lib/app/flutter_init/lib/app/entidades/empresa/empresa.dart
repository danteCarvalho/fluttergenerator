import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../../outros/metodos_estaticos.dart';
import '../entidade.dart';

part 'empresa.g.dart';

part 'empresa.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class Empresa extends _EmpresaBase with _$Empresa, _$Serial {
  static Empresa fromJson(Map map) {
    Map map2 = Empresa().dbMaptoClassMap(map);
    return _$EmpresaFromJson(map2);
  }
}

abstract class _EmpresaBase extends Entidade with Store {
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
