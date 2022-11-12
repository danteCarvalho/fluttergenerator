class FlutterTemplates {

  static String flutterViewModel = """
import 'dart:convert';
  
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';
import '../../entidades/entidade.dart';

part 'wwww_view.g.dart';
part 'wwww_view.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
@EnableReflection()
@reflector
class WWWWView extends _WWWWViewBase with _\$WWWWView {

  static WWWWView fromJson(Map map) {
    Map map2 = WWWWView().dbMaptoClassMap(map);
    return _\$WWWWViewFromJson(map2);
  }
  
  static List<WWWWView>? listMapToListClass2(List? list) {
    if(list == null){
      return null;
    }
    List<WWWWView> list2 = [];
    for(var obj in list){
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _\$WWWWViewToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _\$WWWWViewToJson(this);
  }
  
  @override
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = Map();
    List allFields = WWWWView().reflect().allFields();
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
  WWWWView stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _\$WWWWViewFromJson(map2);
  }

  @override
  WWWWView mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _\$WWWWViewFromJson(map2);
  }
  
  @override
  List<WWWWView>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }
  
  @override
  ClassReflection<WWWWView> reflect() {
    return reflection;
  }
  

}

abstract class _WWWWViewBase extends Entidade with Store {

}
  """;


  static String flutterModel = """
import 'dart:convert';
  
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';


import '../../outros/entidade_helper.dart';
import '../entidade.dart';

part 'wwww.g.dart';
part 'wwww.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
@EnableReflection()
@reflector
class WWWW extends _WWWWBase with _\$WWWW {

  static WWWW fromJson(Map map) {
    Map map2 = WWWW().dbMaptoClassMap(map);
    return _\$WWWWFromJson(map2);
  }
  
  static List<WWWW>? listMapToListClass2(List? list) {
    if(list == null){
      return null;
    }
    List<WWWW> list2 = [];
    for(var obj in list){
      list2.add(fromJson(obj));
    }
    return list2;
  }

  @override
  Map<String, dynamic> classToMap() {
    return _\$WWWWToJson(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _\$WWWWToJson(this);
  }
  
  @override
  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = Map();
    List allFields = WWWW().reflect().allFields();
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
  WWWW stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _\$WWWWFromJson(map2);
  }

  @override
  WWWW mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _\$WWWWFromJson(map2);
  }
  
  @override
  List<WWWW>? listMapToListClass(List? list) {
    return listMapToListClass2(list);
  }
  
  @override
  ClassReflection<WWWW> reflect() {
    return reflection;
  }
  

}

abstract class _WWWWBase extends Entidade with Store {

}

  """;


  static String widget = """
  
import 'package:flutter/material.dart';

class WWWWWidget extends StatefulWidget {

  const WWWWWidget({Key? key}) : super(key: key);

  @override
  WWWWWidgetState createState() => WWWWWidgetState();
}
class WWWWWidgetState extends State<WWWWWidget> {

 @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}  
  
  """;

  static String widgetWithStore = """
  
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'wwww_store.dart';


class WWWWWidget extends StatefulWidget {
  @override
  WWWWWidgetState createState() => WWWWWidgetState();
}
class WWWWWidgetState extends State<WWWWWidget> {
  final WWWWStore store = Modular.get();
  
  @override
  void initState() {
    super.initState();
    store.init();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}  
  
  """;

  static String page = """

import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'wwww_store.dart';

class WWWWPage extends StatefulWidget {
  final String title;
  const WWWWPage({Key? key, this.title = 'WWWW'}) : super(key: key);
  @override
  WWWWPageState createState() => WWWWPageState();
}
class WWWWPageState extends State<WWWWPage> {
  final WWWWStore store = Modular.get();
  
  @override
  void initState() {
    super.initState();
    store.init();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> columnWidgets = [];
    var column = Column(
      children: columnWidgets,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
    );
    return Scaffold(
      body: SingleChildScrollView(
          child: Card(
        child: column,
      )),
    );
  }
}


""";

  static String module = """

import 'package:flutter_modular/flutter_modular.dart';
import 'wwww_store.dart';
import 'wwww_page.dart';

class WWWWModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => WWWWStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => WWWWPage()),
  ];
}


""";

  static String store = """

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../app_store.dart';
part 'wwww_store.g.dart';

class WWWWStore = WWWWStoreBase with _\$WWWWStore;
abstract class WWWWStoreBase with Store {
  
  AppStore app = Modular.get();
  
  @action
  init()async{
  
  }

}

""";


}
