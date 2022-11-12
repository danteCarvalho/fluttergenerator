
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../app_store.dart';
part 'menu_lateral_store.g.dart';

class MenuLateralStore = MenuLateralStoreBase with _$MenuLateralStore;
abstract class MenuLateralStoreBase with Store {
  
  AppStore app = Modular.get();
  @observable
  List? menuLinks;
  
  @action
  init()async{
  
  }

}

