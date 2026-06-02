import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../app_routes.dart';
import '../../app_store.dart';
import 'root_page.dart';

part 'root_store.g.dart';

class RootStore extends RootStoreBase with _$RootStore {
  RootStore();
}

abstract class RootStoreBase with Store {
   late AppStore app;


  Future<void> init(RootPageState state) async {
    app = state.context.read<AppStore>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (app.usuario != null) {
        router.go("/logado");
      } else {
        router.go("/home");
      }
    });
  }
}
