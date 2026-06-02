import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../app_store.dart';
import 'home_page.dart';

part 'home_store.g.dart';

class HomeStore extends HomeStoreBase with _$HomeStore {
  HomeStore();
}

abstract class HomeStoreBase with Store {
  late AppStore app;

  Future<void> init(HomePageState state) async {
    app = state.context.read<AppStore>();
  }
}
