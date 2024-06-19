import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../coluna.dart';
import '../entidade.dart';

part 'imagem.g.dart';
part 'imagem.reflection.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
@EnableReflection()
@reflector
@SerialAnnotation()
class Imagem extends Entidade with _$Serial {
  static Imagem fromJson(Map map) {
    Map map2 = Imagem().dbMaptoClassMap(map);
    return _$ImagemFromJson(map2);
  }

  @Coluna(tipo: "character varying", nullable: false)
  String value  = "";
  String name = "";
  String extension = "";
  int size = 0;
}
