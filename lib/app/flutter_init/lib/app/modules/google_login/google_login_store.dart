import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_store.dart';
import '../../entidades/usuario/usuario.dart';
import '../../requests/server_requets.dart';
import 'google_login_page.dart';

part 'google_login_store.g.dart';

class GoogleLoginStore = GoogleLoginStoreBase with _$GoogleLoginStore;

abstract class GoogleLoginStoreBase with Store {
  AppStore app = Modular.get();

  init(GoogleLoginPageState state) async {
    Map queryParameters = Uri.base.queryParameters;
    var state = queryParameters["state"];
    Map map = {};
    map["code"] = queryParameters["code"];
    map["state"] = state;
    map["client_id"] = "44265153130-1i4ub5c40hjq8i6420j5d71dc601ump1.apps.googleusercontent.com";
    map["redirect_uri"] = "${Uri.base.origin}/googleLogin/";
    map["tipo"] = "web";
    var responseBody = await serverPost(map, "api/googleLogin");
    if (nuloOuvazio([responseBody])) {
      return;
    }
    Map responseMap = json.decode(responseBody);
    if (responseMap.containsKey("mensagem")) {
      app.mostrarSnackBar(responseMap["mensagem"]);
      return;
    }
    Usuario usuario = Usuario.fromJson(responseMap["usuario"]);
    Map token = responseMap["token"];
    Map tokenInfo = responseMap["tokenInfo"];
    String jwt = responseMap["jwt"];
    var shared = await SharedPreferences.getInstance();
    shared.setString("token", json.encode(token));
    shared.setString("tokenInfo", json.encode(tokenInfo));
    shared.setString("jwt", jwt);
    shared.setString("usuario", usuario.classToString());

    app.usuario = usuario;
    app.mostrarSnackBar("Logado com sucesso");
    Modular.to.popUntil((p0) => false);
    Modular.to.pushReplacementNamed(state);
  }
}
