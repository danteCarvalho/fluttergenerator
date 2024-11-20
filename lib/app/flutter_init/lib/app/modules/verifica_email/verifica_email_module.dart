
import 'package:flutter_modular/flutter_modular.dart';

import 'verifica_email_page.dart';
import 'verifica_email_store.dart';

class VerificaEmailModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(VerificaEmailStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const VerificaEmailPage());
  }
}


