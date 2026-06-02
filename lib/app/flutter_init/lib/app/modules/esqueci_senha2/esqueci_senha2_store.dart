import 'dart:convert';

import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../app_routes.dart';
import '../../app_store.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'esqueci_senha2_page.dart';

part 'esqueci_senha2_store.g.dart';

class EsqueciSenha2Store extends EsqueciSenha2StoreBase with _$EsqueciSenha2Store {
  EsqueciSenha2Store();
}

abstract class EsqueciSenha2StoreBase with Store {
  late AppStore app;

  late String id;
  @observable
  String senha = "";
  @observable
  String senha2 = "";
  @observable
  bool alterada = false;


  Future<void> init(EsqueciSenha2PageState state) async {
    app = state.context.read<AppStore>();
    String? id = state.widget.id;
    if (id == null) {
      router.go("/home");
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
      var responseBody = await serverPost(map, "esqueciSenha2");
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
