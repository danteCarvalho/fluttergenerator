import 'package:flutter_modular/flutter_modular.dart';

import 'modules/google_login/google_login_module.dart';
import 'app_store.dart';
import 'modules/home/home_module.dart';
import 'modules/login/login_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute("/home", module: HomeModule()),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/googleLogin", module: GoogleLoginModule()),
  ];
}
