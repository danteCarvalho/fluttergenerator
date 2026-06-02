
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'logado_store.dart';

class LogadoPage extends StatefulWidget {
  const LogadoPage({super.key});
  @override
  LogadoPageState createState() => LogadoPageState();
}
class LogadoPageState extends State<LogadoPage> {
  late LogadoStore store;
  
  @override
  void initState() {
    super.initState();
    store = context.read<LogadoStore>();
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


