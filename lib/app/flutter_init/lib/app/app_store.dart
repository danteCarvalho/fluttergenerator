import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_routes.dart';
import 'app_widget.dart';
import 'entidades/usuario/usuario.dart';
import 'local/local_config/local_config.dart';
import 'outros/estaticos_flutter.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;

Function? onJwtExpired;

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

  late AppWidgetState appWidgetState;

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey = GlobalKey<ScaffoldMessengerState>();
  @observable
  LocalConfig localConfig = LocalConfig();

  init(AppWidgetState appWidgetState) async {
    onJwtExpired = sair;
    this.appWidgetState = appWidgetState;
    var shared = await SharedPreferences.getInstance();
    usuario = shared.containsKey("usuario") ? Usuario().stringToClass(shared.getString("usuario")!) : null;
    localConfig = shared.containsKey("localConfig")
        ? LocalConfig().stringToClass(shared.getString("localConfig")!)
        : await newConfig();
    verificaJwt(this);
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

  mostrarSnackBar(String texto, {SnackBarAction? action}) {
    var snackBar = SnackBar(content: Text(texto), duration: Duration(seconds: 3),action: action,);
    messengerKey.currentState?.showSnackBar(snackBar);
  }

  
  sair({bool redirecionar = true}) async {
    var shared = await SharedPreferences.getInstance();
    shared.remove("token");
    shared.remove("tokenInfo");
    shared.remove("jwt");
    shared.remove("usuario");
    usuario = null;
    if (redirecionar) {
      router.go("/home");
    }
  }
}
