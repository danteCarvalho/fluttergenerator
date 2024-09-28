import 'dart:async';

import 'package:flutter_modular/flutter_modular.dart';

import '../app_store.dart';
import '../entidades/usuario/usuario.dart';

class LoginGuard extends RouteGuard {
  String? redirect;

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    AppStore app = Modular.get();
    var usuario = app.usuario;
    if (usuario == null) {
      redirect = "/home/";
      return false;
    } else if (usuario.emailVerificado == false) {
      redirect = "/verificaEmail/";
      return false;
    }
    return true;
  }

  @override
  FutureOr<ParallelRoute?> pos(
    ModularRoute route,
    ModularArguments data,
  ) async {
    if (await canActivate(data.uri.toString(), route as ParallelRoute)) {
      return route;
    } else if (redirect != null) {
      return RedirectRoute(route.name, to: redirect!);
    }
    return null;
  }
}
