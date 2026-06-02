import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'root_store.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  RootPageState createState() => RootPageState();
}

class RootPageState extends State<RootPage> {
  late RootStore store;

  @override
  void initState() {
    super.initState();
    store = context.read<RootStore>();
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
    return Scaffold(body: SingleChildScrollView(child: column));
  }
}
