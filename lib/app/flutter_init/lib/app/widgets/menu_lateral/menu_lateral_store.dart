
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../app_store.dart';
import 'menu_lateral_widget.dart';

part 'menu_lateral_store.g.dart';

class MenuLateralStore extends MenuLateralStoreBase with _$MenuLateralStore {
  MenuLateralStore();
}

abstract class MenuLateralStoreBase with Store {
  late AppStore app;


  @observable
  List? menuLinks;
  
  init(MenuLateralWidgetState state)async{
    app = state.context.read<AppStore>();
  }

}

