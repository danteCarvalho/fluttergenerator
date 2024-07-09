class FlutterTemplates {

  static String flutterViewModel = """
import 'dart:convert';

import 'package:dartutils/dartutils.dart';  
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../../outros/entidade_helper.dart';

part 'wwww_view.g.dart';
part 'wwww_view.reflection.g.dart';

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
import 'package:mobx/mobx.dart';
import 'package:reflection_factory/reflection_factory.dart';


import '../../outros/entidade_helper.dart';
import '../entidade.dart';

part 'wwww.g.dart';
part 'wwww.reflection.g.dart';

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

  const WWWWWidget({super.key});

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
  const WWWWWidget({Key? key}) : super(key: key);

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
  const WWWWPage({super.key, this.title = 'WWWW'});
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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnWidgets,
    );
     sessao(Widget widget) {
      return Container(
        width: responsiveSize(context, mobile: col_11(context), desktop3: col_5(context)),
        margin: const EdgeInsets.all(10),
        child: widget,
      );
    }
    List<Widget> wrapWidgets = [];
    var wrap = Wrap(
      children: wrapWidgets,
    );
    columnWidgets.add(wrap);
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
  void binds(i) {
    i.addLazySingleton(WWWWStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const WWWWPage());
  }
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
