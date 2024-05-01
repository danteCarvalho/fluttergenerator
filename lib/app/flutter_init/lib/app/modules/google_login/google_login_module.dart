
import 'package:flutter_modular/flutter_modular.dart';

import 'google_login_page.dart';
import 'google_login_store.dart';

class GoogleLoginModule extends Module {


  @override
  void binds(i) {
    i.addLazySingleton(GoogleLoginStore.new);
  }

  @override
  void routes(r) {
    r.child(Modular.initialRoute, child: (context) => const GoogleLoginPage());
  }
}


