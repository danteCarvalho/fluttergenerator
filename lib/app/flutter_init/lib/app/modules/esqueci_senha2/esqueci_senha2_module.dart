
import 'package:flutter_modular/flutter_modular.dart';
import 'esqueci_senha2_store.dart';
import 'esqueci_senha2_page.dart';

class EsqueciSenha2Module extends Module {
  @override
  void binds(i) {
    i.addLazySingleton(EsqueciSenha2Store.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const EsqueciSenha2Page());
  }
}


