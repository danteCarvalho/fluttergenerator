import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../empresa/empresa.dart';
import '../entidade.dart';
import '../usuario/usuario.dart';

part 'pagamento.g.dart';
part 'pagamento.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class Pagamento extends Entidade with _$Serial {
  static Pagamento fromJson(Map map) {
    Map map2 = Pagamento().dbMaptoClassMap(map);
    return _$PagamentoFromJson(map2);
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
