import 'package:flutter_modular/flutter_modular.dart';

import 'app_store.dart';
import 'modules/google_login/google_login_module.dart';
import 'modules/home/home_module.dart';
import 'modules/lista_mensalidades/lista_mensalidades_module.dart';
import 'modules/login/login_module.dart';
import 'widgets/menu_lateral/menu_lateral_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => AppStore()),
    Bind.lazySingleton((i) => MenuLateralStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute("/home", module: HomeModule()),
    ModuleRoute("/login", module: LoginModule()),
    ModuleRoute("/googleLogin", module: GoogleLoginModule()),
    ModuleRoute("/mensalidades", module: ListaMensalidadesModule()),
  ];
}
