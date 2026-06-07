import 'dart:convert';

import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_routes.dart';
import '../../app_store.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'verifica_email2_page.dart';

part 'verifica_email2_store.g.dart';

class VerificaEmail2Store extends VerificaEmail2StoreBase with _$VerificaEmail2Store {
  VerificaEmail2Store();
}

abstract class VerificaEmail2StoreBase with Store {
  late AppStore app;

  @observable
  bool verificado = false;

  Future<void> init(VerificaEmail2PageState state) async {
    app = state.context.read<AppStore>();
    String? id = state.widget.id;
    if (id == null) {
      router.go("/home");
      return;
    }
    verificarEmail(id);
  }

  verificarEmail(String id) async {
    try {
      app.startWait();
      Map map = {"id": id};
      var responseBody = await serverPost(map,"verificaEmail2");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("usuario")) {
          Usuario usuario = Usuario.fromJson(responseMap["usuario"]);
          var shared = await SharedPreferences.getInstance();
          shared.setString("usuario", usuario.classToString());
          app.usuario = usuario;
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
