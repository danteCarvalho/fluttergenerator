import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';

import '../../app_store.dart';
import '../../outros/config/config.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'esqueci_senha_page.dart';

part 'esqueci_senha_store.g.dart';

class EsqueciSenhaStore = EsqueciSenhaStoreBase with _$EsqueciSenhaStore;

abstract class EsqueciSenhaStoreBase with Store {
  AppStore app = Modular.get();
  HttpServer? server;
  @observable
  String email = "";

  init(EsqueciSenhaPageState state) async {}

  enviar() async {
    try {
      app.startWait();
      if (email.isEmpty) {
        return;
      }
      Map map = {"email": email};
      if (kIsWeb) {
        map["origin"] = Uri.base.origin;
      }
      else{
        map["origin"] = "http://localhost:${config.portaApp}";
      }
      var responseBody = await serverPost(map, "esqueciSenha");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("ok")) {
          app.mostrarSnackBar("Email enviado");
          if (!kIsWeb) {
            esperarResposta();
          }
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

  esperarResposta()async{
    var server = await HttpServer.bind("0.0.0.0", config.portaApp);
    this.server = server;
    var request = await server.first;
    var queryParameters = request.uri.queryParameters;
    var id = queryParameters["id"];
    await request.response.close();
    server.close();
    Modular.to.pushNamed("/esqueciSenha2/?id=$id");
  }
}
