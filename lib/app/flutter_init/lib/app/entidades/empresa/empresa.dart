import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../entidade.dart';

part 'empresa.g.dart';
part 'empresa.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
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
  String? nome;
  double? valorPagamento;
  String? telefone;
  String? anydesk;
  String? whatsapp;
  double? latitude;
  double? longitude;
  DateTime? dataPagamento;
  DateTime? lastUpdate;
  DateTime? lastTry;
  DateTime? ultimoPagamentoCompleto;
  DateTime? ultimoPagamentoGerado;
  bool? ambienteProducao;
  bool? emissaoNormal;
  bool? impressaoNfce;
  bool? contingenciaAoDemorar;
  String? justificativaContingencia;
  String? tipoGeracaoNota;
  String? csc;
  String? idCsc;
  int? serie;
  int? numeroNotaFiscal;
  int? numeroNotaFiscalHomologacao;
  String? cnpj;
  String? razaoSocial;
  String? municipio;
  String? estado;
  String? cep;
  String? bairro;
  String? logradouro;
  String? numeroCasa;
  String? inscricaoEstadual;
  String? regimeTributario;
  String? nsu;

}

  