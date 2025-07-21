
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'logado_store.dart';

class LogadoPage extends StatefulWidget {
  const LogadoPage({super.key});
  @override
  LogadoPageState createState() => LogadoPageState();
}
class LogadoPageState extends State<LogadoPage> {
  final LogadoStore store = Modular.get();
  
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

    return store.app.popScope(Scaffold(
      body: SingleChildScrollView(
          child: column),
    ), context);
  }
}


