
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'root_store.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});
  @override
  RootPageState createState() => RootPageState();
}
class RootPageState extends State<RootPage> {
  final RootStore store = Modular.get();
  
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
    return Scaffold(
      body: SingleChildScrollView(
          child: column),
    );
  }
}


