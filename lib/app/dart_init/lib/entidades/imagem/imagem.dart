
import 'dart:convert';

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
class Imagem extends Entidade {

  @Coluna(tipo: "character varying",nullable: false)
  String? value;
  String? name;
  int? size;

  static Imagem fromJson(Map map) {
    Map map2 = Imagem().dbMaptoClassMap(map);
    return _$ImagemFromJson(map2);
  }
  
  static List<Imagem>? listMapToListClass2(List? list) {
    if(list == null){
      return null;
    }
    List<Imagem> list2 = [];
    for(var obj in list){
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _$ImagemToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ImagemToJson(this);
  }

  @override
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = Map();
    List allFields = Imagem().reflect().allFields();
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
  String classToString() {
    return json.encode(this);
  }

  @override
  Imagem stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$ImagemFromJson(map2);

  }

  @override
  Imagem mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$ImagemFromJson(map2);
  }
  
  @override
  List<Imagem>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }
  
  @override
  ClassReflection<Imagem> reflect() {
    return reflection;
  }
  
}




  