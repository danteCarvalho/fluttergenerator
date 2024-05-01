import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../app_store.dart';
import 'root_page.dart';

part 'root_store.g.dart';

class RootStore = RootStoreBase with _$RootStore;

abstract class RootStoreBase with Store {
  AppStore app = Modular.get();

  init(RootPageState state) async {
    Modular.to.popUntil((p0) => false);
    if (app.usuario != null) {
      Modular.to.pushReplacementNamed("/principal/");
    } else {
      Modular.to.pushReplacementNamed("/home/");
    }
  }
}
