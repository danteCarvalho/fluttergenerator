
import 'package:flutter_modular/flutter_modular.dart';
import 'verifica_email2_store.dart';
import 'verifica_email2_page.dart';

class VerificaEmail2Module extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(VerificaEmail2Store.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const VerificaEmail2Page());
  }
}


