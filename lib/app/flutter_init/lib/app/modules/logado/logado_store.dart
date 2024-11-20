
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../app_store.dart';
import 'logado_page.dart';

part 'logado_store.g.dart';

class LogadoStore = LogadoStoreBase with _$LogadoStore;
abstract class LogadoStoreBase with Store {
  
  AppStore app = Modular.get();
  
  init(LogadoPageState state)async{
  
  }

}

