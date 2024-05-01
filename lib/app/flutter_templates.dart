class FlutterTemplates {

  static String flutterViewModel = """
import 'dart:convert';

import 'package:dartutils/dartutils.dart';  
import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';

part 'wwww_view.g.dart';
part 'wwww_view.reflection.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
@EnableReflection()
@reflector
@SerialAnnotation()
class WWWWView extends _WWWWViewBase with _\$WWWWView, _\$Serial {

  static WWWWView fromJson(Map map) {
    Map map2 = WWWWView().dbMaptoClassMap(map);
    return _\$WWWWViewFromJson(map2);
  }

}

abstract class _WWWWViewBase  with Store {

}
  """;


  static String flutterModel = """
import 'dart:convert';

import 'package:dartutils/dartutils.dart';  
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
@SerialAnnotation()
class WWWW extends _WWWWBase with _\$WWWW, _\$Serial {

  static WWWW fromJson(Map map) {
    Map map2 = WWWW().dbMaptoClassMap(map);
    return _\$WWWWFromJson(map2);
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
    store.init(this);
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
    store.init(this);
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
import 'wwww_yyyy.dart';

part 'wwww_store.g.dart';

class WWWWStore = WWWWStoreBase with _\$WWWWStore;
abstract class WWWWStoreBase with Store {
  
  AppStore app = Modular.get();
  
  init(WWWWYYYYState state)async{
  
  }

}

""";


}
