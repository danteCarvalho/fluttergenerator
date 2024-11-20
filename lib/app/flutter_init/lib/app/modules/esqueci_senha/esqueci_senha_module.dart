
import 'package:flutter_modular/flutter_modular.dart';

import 'esqueci_senha_page.dart';
import 'esqueci_senha_store.dart';

class EsqueciSenhaModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(EsqueciSenhaStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const EsqueciSenhaPage());
  }
}


