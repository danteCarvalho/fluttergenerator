import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget.dart';
import 'entidades/usuario/usuario.dart';
import 'local/local_config/local_config.dart';
import 'outros/metodos_estaticos.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  bool iniciado = false;
  bool menuLateral = true;
  @observable
  Usuario? usuario;
  @observable
  bool esperar = false;
  @observable
  bool bloquear = false;
  Set<BuildContext> contexts = {};

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @observable
  LocalConfig localConfig = LocalConfig();

  init(AppWidgetState appWidgetState) async {
    Modular.setObservers([NavigationHistoryObserver()]);
    var shared = await SharedPreferences.getInstance();
    usuario =
        shared.containsKey("usuario")
            ? Usuario().stringToClass(shared.getString("usuario")!)
            : null;
    localConfig =
        shared.containsKey("localConfig")
            ? LocalConfig().stringToClass(shared.getString("localConfig")!)
            : await newConfig();
    verificaJwt();
    await Future.delayed(const Duration(seconds: 3));
    iniciado = true;
    appWidgetState.refresh();
  }

  newConfig() async {
    return await salvarConfig();
  }

  salvarConfig() async {
    var shared = await SharedPreferences.getInstance();
    await shared.setString("localConfig", localConfig.classToString());
    return localConfig;
  }

  startWait({bool autoClose = false}) async {
    esperar = true;
    bloquear = true;
    Timer(const Duration(seconds: 3), () {
      bloquear = false;
      if (autoClose) {
        esperar = false;
      }
    });
  }

  printLog(String msg, e) {
    log(msg, error: e);
  }

  printDebug(msg) {
    debugPrint(msg.toString());
  }

  mostrarSnackBar(String texto) {
    removeInvalids();
    var snackBar = SnackBar(
      content: Text(texto),
      duration: Duration(seconds: 3),
    );
    ScaffoldMessenger.of(contexts.last).showSnackBar(snackBar);
  }

  dialog(
    Widget dialog, {
    bool barrierDismissible = true,
    Color? barrierColor,
  }) async {
    removeInvalids();
    BuildContext? context2;
    await showDialog(
      context: contexts.last,
      builder: (context) {
        contexts.add(context);
        context2 = context;
        return dialog;
      },
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      useRootNavigator: false,
    );

    contexts.remove(context2);
  }

  menu(BuildContext context, List<PopupMenuItem> items) async {
    contexts.add(context);
    await showMenu(context: context, position: RelativeRect.fill, items: items);
    contexts.remove(context);
  }

  popScope(Widget child, BuildContext context, {bool canPop = false}) {
    contexts.add(context);
    return PopScope(
      canPop: canPop,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop) {
          pop();
        } else {
          contexts.remove(context);
        }
      },
      child: child,
    );
  }

  removeInvalids(){
    var toRemove = [];
    for (var obj in contexts) {
      try {
        obj.size;
      } catch (e) {
        toRemove.add(obj);
      }
    }
    for (var obj in toRemove) {
      contexts.remove(obj);
    }
  }

  pop() {
    removeInvalids();
    if (contexts.isNotEmpty) {
      var last = contexts.last;
      if (Navigator.canPop(last)) {
        Navigator.pop(last, last);
      }
    }
  }

  sair() async {
    var shared = await SharedPreferences.getInstance();
    shared.remove("token");
    shared.remove("tokenInfo");
    shared.remove("jwt");
    shared.remove("usuario");
    usuario = null;
    Modular.to.popUntil((p0) => false);
    Modular.to.pushReplacementNamed("/home/");
  }
}
