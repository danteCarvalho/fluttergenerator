import 'package:flutter_modular/flutter_modular.dart';

import '../app_store.dart';

class LoginGuard extends RouteGuard {
  LoginGuard() : super(redirectTo: '/home/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) async {
    AppStore app = Modular.get();
    if (app.usuario == null) {
      return false;
    } else {
      return true;
    }
  }
}
