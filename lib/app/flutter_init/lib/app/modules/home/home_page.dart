import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late HomeStore store;

  @override
  void initState() {
    super.initState();
    store = context.read<HomeStore>();
    store.init(this);
  }

  @override
  Widget build(BuildContext context) {
    return store.app.popScope(Scaffold(body: Container()), context);
  }
}
