import 'dart:ui';

import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:intl/intl.dart';

import 'app_store.dart';
import 'widgets/root_app_bar_widget.dart';
import 'widgets/splash/splash_widget.dart';
import 'widgets/wait/wait_widget.dart';

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
    Intl.defaultLocale = 'pt_BR';
    var colorScheme = ColorScheme.fromSeed(seedColor: Colors.green);
    return MaterialApp.router(
      builder: (context, child) {
        child = Scaffold(
          appBar: const RootAppBarWidget(),
          body: child,
        );
        child = Asuka.builder(context, child);
        child = Stack(
          alignment: Alignment.center,
          children: [child, const WaitWidget()],
        );
        return store.iniciado ? child : const SplashWidget();
      },
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: const [Locale('pt', 'BR'), Locale('en', 'US')],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          buttonTheme: const ButtonThemeData(
            alignedDropdown: true,
          ),
          colorScheme: colorScheme,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black, foregroundColor: Colors.white),
          ),
          useMaterial3: true),
      routerConfig: Modular.routerConfig,
      scrollBehavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: PointerDeviceKind.values.toSet(),
      ),
    );
  }
}
