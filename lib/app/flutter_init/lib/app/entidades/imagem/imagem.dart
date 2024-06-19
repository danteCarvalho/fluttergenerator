import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../entidade.dart';

part 'imagem.g.dart';
part 'imagem.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
@EnableReflection()
@reflector
@SerialAnnotation()
class Imagem extends _ImagemBase with _$Imagem, _$Serial {

  static Imagem fromJson(Map map) {
    Map map2 = Imagem().dbMaptoClassMap(map);
    return _$ImagemFromJson(map2);
  }


}

abstract class _ImagemBase extends Entidade with Store {
  String value  = "";
  String name = "";
  String extension = "";
  int size = 0;
}

  