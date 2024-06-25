
import 'package:flutter_modular/flutter_modular.dart';

import 'cadastro_page.dart';
import 'cadastro_store.dart';

class CadastroModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(CadastroStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const CadastroPage());
  }
}


