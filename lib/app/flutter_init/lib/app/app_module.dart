import 'package:flutter_modular/flutter_modular.dart';

import 'app_store.dart';
import 'guards/login_guard.dart';
import 'modules/cadastro/cadastro_module.dart';
import 'modules/google_login/google_login_module.dart';
import 'modules/home/home_module.dart';
import 'modules/lista_mensalidades/lista_mensalidades_module.dart';
import 'modules/logado/logado_module.dart';
import 'modules/login/login_module.dart';
import 'modules/root/root_module.dart';
import 'widgets/menu_lateral/menu_lateral_store.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(AppStore.new);
    i.addLazySingleton(MenuLateralStore.new);
  }

  @override
  void routes(r) {
    r.module("/", module: RootModule());
    r.module("/home", module: HomeModule());
    r.module("/login", module: LoginModule());
    r.module("/googleLogin", module: GoogleLoginModule());
    r.module("/mensalidades", module: ListaMensalidadesModule());
    r.module("/cadastro", module: CadastroModule());
    r.module("/logado", module: LogadoModule(),guards: [LoginGuard()]);
  }
}
