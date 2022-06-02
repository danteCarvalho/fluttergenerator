import 'dart:convert';
  
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
class Empresa extends _EmpresaBase with _$Empresa {

  static Empresa fromJson(Map map) {
    Map map2 = Empresa().dbMaptoClassMap(map);
    return _$EmpresaFromJson(map2);
  }
  
  static List<Empresa>? listMapToListClass2(List? list) {
    if(list == null){
      return null;
    }
    List<Empresa> list2 = [];
    for(var obj in list){
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _$EmpresaToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$EmpresaToJson(this);
  }
  
  @override
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = Map();
    List allFields = Empresa().reflect().allFields();
    for(var obj in allFields){
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
  String classToString(){
    return json.encode(this);
  }

  @override
  Empresa stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$EmpresaFromJson(map2);
  }

  @override
  Empresa mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$EmpresaFromJson(map2);
  }
  
  @override
  List<Empresa>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }
  
  @override
  ClassReflection<Empresa> reflect() {
    return reflection;
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

  