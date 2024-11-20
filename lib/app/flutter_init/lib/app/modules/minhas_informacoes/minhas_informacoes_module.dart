
import 'package:flutter_modular/flutter_modular.dart';

import 'minhas_informacoes_page.dart';
import 'minhas_informacoes_store.dart';

class MinhasInformacoesModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(MinhasInformacoesStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const MinhasInformacoesPage());
  }
}


