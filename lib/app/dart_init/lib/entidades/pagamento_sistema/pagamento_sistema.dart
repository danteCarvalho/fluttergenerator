import 'dart:convert';

import 'package:dartutils/dartutils.dart';
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
@SerialAnnotation()
class PagamentoSistema extends Entidade with _$Serial {
  static PagamentoSistema fromJson(Map map) {
    Map map2 = PagamentoSistema().dbMaptoClassMap(map);
    return _$PagamentoSistemaFromJson(map2);
  }

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
}
