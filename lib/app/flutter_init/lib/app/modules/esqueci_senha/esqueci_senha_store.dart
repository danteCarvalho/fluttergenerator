import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import '../../app_store.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'esqueci_senha_page.dart';

part 'esqueci_senha_store.g.dart';

class EsqueciSenhaStore = EsqueciSenhaStoreBase with _$EsqueciSenhaStore;

abstract class EsqueciSenhaStoreBase with Store {
  AppStore app = Modular.get();

  @observable
  String email = "";

  init(EsqueciSenhaPageState state) async {}

  enviar() async {
    try {
      app.startWait();
      if (email.isEmpty) {
        return;
      }
      Map map = {
        "email": email,
        "origin": Uri.base.origin,
      };
      var responseBody = await serverPost(map, "api/esqueciSenha");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("ok")) {
          app.mostrarSnackBar("Email enviado");
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
