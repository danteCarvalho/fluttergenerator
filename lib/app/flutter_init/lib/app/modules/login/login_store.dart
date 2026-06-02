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
import 'login_page.dart';

part 'login_store.g.dart';

class LoginStore extends LoginStoreBase with _$LoginStore {
  LoginStore();
}

abstract class LoginStoreBase with Store {
  late AppStore app;

  @observable
  String login = "";
  @observable
  String senha = "";

  Future<void> init(LoginPageState state) async {
    app = state.context.read<AppStore>();
  }

  enviar() async {
    try {
      app.startWait();
      Map map = {"email": login, "senha": senha};
      var responseBody = await serverPost(map, "login");
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
          router.go("/logado");
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
