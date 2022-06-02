
import 'package:flutter_modular/flutter_modular.dart';
import 'google_login_store.dart';
import 'google_login_page.dart';

class GoogleLoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => GoogleLoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const GoogleLoginPage()),
  ];
}


