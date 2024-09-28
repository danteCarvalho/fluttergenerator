import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_store.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'login_page.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  AppStore app = Modular.get();
  @observable
  String login = "";
  @observable
  String senha = "";

  init(LoginPageState state) async {}

  enviar() async {
    try {
      app.startWait();
      Map map = {"email": login, "senha": senha};
      var responseBody = await serverPost(map, "api/login");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("usuario")) {
          Usuario usuario = Usuario.fromJson(responseMap["usuario"]);
          String jwt = responseMap["jwt"];
          var shared = await SharedPreferences.getInstance();
          shared.setString("jwt", jwt);
          shared.setString("usuario", usuario.classToString());
          app.usuario = usuario;
          app.mostrarSnackBar("Logado com sucesso");
          Modular.to.popUntil((p0) => false);
          Modular.to.pushReplacementNamed("/logado/");
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
