import 'dart:async';
import 'dart:developer';

import 'package:asuka/asuka.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_widget.dart';
import 'entidades/usuario/usuario.dart';
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

  init(AppWidgetState appWidgetState) async {
    Modular.setObservers([Asuka.asukaHeroController, NavigationHistoryObserver()]);
    var shared = await SharedPreferences.getInstance();
    usuario = shared.containsKey("usuario") ? Usuario().stringToClass(shared.getString("usuario")!) : null;
    verificaJwt();
    await Future.delayed(const Duration(seconds: 3));
    iniciado = true;
    appWidgetState.refresh();
  }

  startWait({bool autoClose = false}) async {
    esperar = true;
    bloquear = true;
    Timer(
      const Duration(seconds: 3),
          () {
        bloquear = false;
        if (autoClose) {
          esperar = false;
        }
      },
    );
  }

  printLog(String msg, e) {
    log(msg, error: e);
  }

  printDebug(msg) {
    debugPrint(msg.toString());
  }

  mostrarSnackBar(String texto) {
    Asuka.showSnackBar(SnackBar(
      content: Text(texto),
    ));
  }

  dialog(Widget dialog) async {
    BuildContext? context2;
    await Asuka.showDialog(builder: (context) {
      contexts.add(context);
      context2 = context;
      return dialog;
    });
    contexts.remove(context2);
  }

  menu(BuildContext context, List<PopupMenuItem> items) async {
    contexts.add(context);
    await showMenu(
      context: context,
      position: RelativeRect.fill,
      items: items,
    );
    contexts.remove(context);
  }

  popScope(Widget child, BuildContext context) {
    contexts.add(context);
    return PopScope(
      canPop: false,
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

  pop() {
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
    if (contexts.isNotEmpty) {
      var last = contexts.last;
      Navigator.pop(last,last);
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
