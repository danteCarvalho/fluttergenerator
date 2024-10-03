import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import '../../app_store.dart';
import '../../outros/logger.dart';
import '../../outros/metodos_estaticos.dart';
import '../../requests/server_requets.dart';
import 'verifica_email2_page.dart';

part 'verifica_email2_store.g.dart';

class VerificaEmail2Store = VerificaEmail2StoreBase with _$VerificaEmail2Store;

abstract class VerificaEmail2StoreBase with Store {
  AppStore app = Modular.get();
  @observable
  bool verificado = false;

  init(VerificaEmail2PageState state) async {
    Map queryParameters = Uri.base.queryParameters;
    String? id = queryParameters["id"];
    if (id == null) {
      Modular.to.popUntil((p0) => false);
      Modular.to.pushReplacementNamed("/home/");
      return;
    }
    verificarEmail(id);
  }

  verificarEmail(String id) async {
    try {
      app.startWait();
      Map map = {"id": id};
      var responseBody = await serverPost(map, "verificaEmail2");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("ok")) {
          verificado = true;
        } else if (responseMap.containsKey("mensagem")) {
          app.mostrarSnackBar(responseMap["mensagem"]);
        }
      }
    } on ClientException catch (e, s) {
      app.mostrarSnackBar("Não foi possivel conectar");
      myLog(e, s);
    } finally {
      app.esperar = false;
    }
  }
}
