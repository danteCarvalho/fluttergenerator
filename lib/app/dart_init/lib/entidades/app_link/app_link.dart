import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../entidade.dart';
import '../usuario/usuario.dart';

part 'app_link.g.dart';

part 'app_link.reflection.g.dart';

@EnableReflection()
@reflector
@SerialAnnotation()
class AppLink extends Entidade with _$Serial {
  static AppLink fromJson(Map map) {
    Map map2 = AppLink().dbMaptoClassMap(map);
    return _$AppLinkFromJson(map2);
  }

  Usuario? usuario;
  String service = "";
}
