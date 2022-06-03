import 'package:asuka/asuka.dart' as asuka;
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'outros/metodos_estaticos.dart';

import 'entidades/usuario/usuario.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

abstract class AppStoreBase with Store {
  @observable
  bool iniciado = false;
  @observable
  Usuario? usuario;
  List<BuildContext> contexts = [];

  init() async {
    var shared = await SharedPreferences.getInstance();
    usuario = shared.containsKey("usuario") ? Usuario().stringToClass(shared.getString("usuario")!) : null;
    verificaJwt();
    iniciado = true;
  }

  mostrarSnackBar(String texto) {
    asuka.showSnackBar(SnackBar(
      content: Text(texto),
    ));
  }

  dialog(Widget dialog) async {
    await asuka.showDialog(
      builder: (context) {
        contexts.add(context);
        return dialog;
      },
    );
  }

  pop() async {
    var list = [];
    for (var obj in contexts) {
      try {
        obj.size;
      } catch (e) {
        list.add(obj);
      }
    }
    for (var obj in list) {
      contexts.remove(obj);
    }
    Navigator.of(contexts.removeLast()).pop();
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
