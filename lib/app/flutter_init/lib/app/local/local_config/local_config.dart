import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';

part 'local_config.g.dart';
part 'local_config.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
@EnableReflection()
@reflector
class LocalConfig extends _LocalConfigBase with _$LocalConfig {

  static LocalConfig fromJson(Map map) {
    Map map2 = LocalConfig().dbMaptoClassMap(map);
    return _$LocalConfigFromJson(map2);
  }
  
  static List<LocalConfig>? listMapToListClass2(List? list) {
    if(list == null){
      return null;
    }
    List<LocalConfig> list2 = [];
    for(var obj in list){
      list2.add(fromJson(obj));
    }
    return list2;
  }

  Map<String, dynamic> classToMap() {
    return _$LocalConfigToJson(this);
  }

  Map<String, dynamic> toJson() {
    return _$LocalConfigToJson(this);
  }
  
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = LocalConfig().reflect().allFields();
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
  
  String classToString(){
    return json.encode(this);
  }

  LocalConfig stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$LocalConfigFromJson(map2);
  }

  LocalConfig mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$LocalConfigFromJson(map2);
  }
  
  List<LocalConfig>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }
  
  ClassReflection<LocalConfig> reflect() {
    return reflection;
  }
  

}

abstract class _LocalConfigBase with Store {

}

  