import 'dart:ui';

import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_store.dart';
import 'widgets/root_app_bar_widget.dart';
import 'widgets/splash/splash_widget.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

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
    return MaterialApp.router(
      builder: (context, child) {
        child = Scaffold(
          appBar: const RootAppBarWidget(),
          body: child,
        );
        child = Asuka.builder(context, child);
        return store.iniciado?child:const SplashWidget();
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        buttonTheme: const ButtonThemeData(
          alignedDropdown: true,
        ),
      ),
      routerConfig: Modular.routerConfig,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: PointerDeviceKind.values.toSet(),
      ),
    );
  }
}
