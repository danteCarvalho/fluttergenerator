
import 'package:flutter_modular/flutter_modular.dart';

import 'logado_page.dart';
import 'logado_store.dart';

class LogadoModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(LogadoStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const LogadoPage());
  }
}


