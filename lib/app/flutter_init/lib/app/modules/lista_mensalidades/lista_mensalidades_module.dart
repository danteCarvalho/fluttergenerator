
import 'package:flutter_modular/flutter_modular.dart';
import 'lista_mensalidades_store.dart';
import 'lista_mensalidades_page.dart';

class ListaMensalidadesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ListaMensalidadesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => const ListaMensalidadesPage()),
  ];
}


