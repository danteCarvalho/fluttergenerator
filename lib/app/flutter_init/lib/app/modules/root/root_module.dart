import 'package:flutter_modular/flutter_modular.dart';

import 'root_page.dart';
import 'root_store.dart';

class RootModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(RootStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const RootPage());
  }
}
