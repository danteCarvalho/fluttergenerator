import 'dart:ui';

import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_store.dart';
import 'widgets/root_app_bar_widget.dart';
import 'widgets/splash/splash_widget.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  AppWidgetState createState() => AppWidgetState();
}

class AppWidgetState extends State<AppWidget> {
  final AppStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init(this);
  }

  refresh() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (store.iniciado) {
      return MaterialApp.router(
        builder: (context, child) {
          child = Scaffold(
            appBar: RootAppBarWidget(),
            body: child,
          );
          child = Asuka.builder(context, child);
          return child;
        },
        debugShowCheckedModeBanner: false,
        title: "teste",
        theme: ThemeData(
          buttonTheme: const ButtonThemeData(
            alignedDropdown: true,
          ),
        ),
        routeInformationParser: Modular.routeInformationParser,
        routerDelegate: Modular.routerDelegate,
        scrollBehavior: ScrollConfiguration.of(context).copyWith(
          dragDevices: PointerDeviceKind.values.toSet(),
        ),
      );
    } else {
      return const MaterialApp(
        home: SplashWidget(),
      );
    }
  }
}
