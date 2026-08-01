import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'google_login_store.dart';

class GoogleLoginPage extends StatefulWidget {

  const GoogleLoginPage({super.key});

  @override
  GoogleLoginPageState createState() => GoogleLoginPageState();
}

class GoogleLoginPageState extends State<GoogleLoginPage> {
  late GoogleLoginStore store;

  @override
  void initState() {
    super.initState();
    store = context.read<GoogleLoginStore>();
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
