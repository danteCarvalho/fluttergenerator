import 'dart:ui';

import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

import 'app_store.dart';
import 'widgets/menu_lateral/menu_lateral_widget.dart';
import 'widgets/root_app_bar_widget.dart';

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
    store.init();
  }

  @override
  Widget build(BuildContext context) {
    var observer = Observer(
      name: "appWidget",
      builder: (context) {
        if (store.iniciado == false) {
          return Container();
        }
        return MaterialApp.router(
          builder: (context, child) {
            child = Scaffold(
              drawer:  store.menuLateral?const MenuLateralWidget():null,
                appBar: const RootAppBarWidget(),
                body: child,
                bottomNavigationBar: const Align(
                  alignment: Alignment.center,
                  heightFactor: 1,
                  child: Text("Teste"),
                ));
            child = asuka.builder(context, child);
            return child;
          },
          debugShowCheckedModeBanner: false,
          title: "Teste",
          theme: ThemeData(
            buttonTheme: const ButtonThemeData(
              alignedDropdown: true,
            ),
          ),
          routeInformationParser: Modular.routeInformationParser,
          routerDelegate: Modular.routerDelegate,
          scrollBehavior: ScrollConfiguration.of(context).copyWith(
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
              PointerDeviceKind.stylus,
              PointerDeviceKind.invertedStylus,
              PointerDeviceKind.unknown,
            },
          ),
        );
      },
    );
    Modular.setObservers([asuka.asukaHeroController, NavigationHistoryObserver()]);
    Modular.setInitialRoute("/home/");
    return observer;
  }
}
