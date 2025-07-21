import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'google_login_store.dart';

class GoogleLoginPage extends StatefulWidget {

  const GoogleLoginPage({super.key});

  @override
  GoogleLoginPageState createState() => GoogleLoginPageState();
}

class GoogleLoginPageState extends State<GoogleLoginPage> {
  final GoogleLoginStore store = Modular.get();

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
