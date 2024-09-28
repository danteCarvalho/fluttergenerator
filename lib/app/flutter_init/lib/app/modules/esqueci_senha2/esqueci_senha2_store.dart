import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';

import '../../app_store.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'esqueci_senha2_page.dart';

part 'esqueci_senha2_store.g.dart';

class EsqueciSenha2Store = EsqueciSenha2StoreBase with _$EsqueciSenha2Store;

abstract class EsqueciSenha2StoreBase with Store {
  AppStore app = Modular.get();
  late String id;
  @observable
  String senha = "";
  @observable
  String senha2 = "";
  @observable
  bool alterada = false;


  init(EsqueciSenha2PageState state) async {
    Map queryParameters = Uri.base.queryParameters;
    String? id = queryParameters["id"];
    if (id == null) {
      Modular.to.popUntil((p0) => false);
      Modular.to.pushReplacementNamed("/home/");
      return;
    }
    this.id = id;
  }

  enviar() async {
    try {
      app.startWait();
      Map map = {
        "id": id,
        "senha":senha
      };
      var responseBody = await serverPost(map, "api/esqueciSenha2");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("ok")) {
          alterada = true;
          app.mostrarSnackBar("Senha alterada com sucesso");
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
