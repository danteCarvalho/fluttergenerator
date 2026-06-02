import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../app_store.dart';
import 'logado_page.dart';

part 'logado_store.g.dart';

class LogadoStore extends LogadoStoreBase with _$LogadoStore {
  LogadoStore();
}

abstract class LogadoStoreBase with Store {
  late AppStore app;
  
  Future<void> init(LogadoPageState state) async {
    app = state.context.read<AppStore>();
  }
}
