import 'package:flutter_modular/flutter_modular.dart';

import 'app_store.dart';
import 'guards/login_guard.dart';
import 'modules/cadastro/cadastro_module.dart';
import 'modules/esqueci_senha/esqueci_senha_module.dart';
import 'modules/esqueci_senha2/esqueci_senha2_module.dart';
import 'modules/google_login/google_login_module.dart';
import 'modules/home/home_module.dart';
import 'modules/lista_mensalidades/lista_mensalidades_module.dart';
import 'modules/logado/logado_module.dart';
import 'modules/login/login_module.dart';
import 'modules/minhas_informacoes/minhas_informacoes_module.dart';
import 'modules/root/root_module.dart';
import 'modules/verifica_email/verifica_email_module.dart';
import 'modules/verifica_email2/verifica_email2_module.dart';
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
    r.module("/verificaEmail", module: VerificaEmailModule());
    r.module("/verificaEmail2", module: VerificaEmail2Module());
    r.module("/esqueciSenha", module: EsqueciSenhaModule());
    r.module("/esqueciSenha2", module: EsqueciSenha2Module());
    r.module("/logado", module: LogadoModule(), guards: [LoginGuard()]);
    r.module("/logado/minhasInformacoes", module: MinhasInformacoesModule());
  }
}
