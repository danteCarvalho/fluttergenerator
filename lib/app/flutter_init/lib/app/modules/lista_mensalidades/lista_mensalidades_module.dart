import 'package:flutter_modular/flutter_modular.dart';

import 'lista_mensalidades_page.dart';
import 'lista_mensalidades_store.dart';

class ListaMensalidadesModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(ListaMensalidadesStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const ListaMensalidadesPage());
  }
}
