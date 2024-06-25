import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';
import '../usuario/usuario.dart';

part 'pagamento_sistema.g.dart';
part 'pagamento_sistema.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class PagamentoSistema extends _PagamentoSistemaBase with _$PagamentoSistema, _$Serial {

  static PagamentoSistema fromJson(Map map) {
    Map map2 = PagamentoSistema().dbMaptoClassMap(map);
    return _$PagamentoSistemaFromJson(map2);
  }


}

abstract class _PagamentoSistemaBase extends Entidade with Store {
  String? referencia;
  String? qrCode;
  bool? pago;
  DateTime? dataConfirmado;
  String? link;
  Empresa? empresa;
  Usuario? usuario;
  double? valor;

}

  