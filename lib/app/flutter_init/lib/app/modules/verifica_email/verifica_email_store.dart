import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_routes.dart';
import '../../app_store.dart';
import '../../daos/hasura_dao.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/config/config.dart';
import '../../outros/excecoes.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'verifica_email_page.dart';

part 'verifica_email_store.g.dart';

class VerificaEmailStore extends VerificaEmailStoreBase with _$VerificaEmailStore {
  VerificaEmailStore();
}

abstract class VerificaEmailStoreBase with Store {
  late AppStore app;

  Timer? timer;
  HttpServer? server;

  Future<void> init(VerificaEmailPageState state) async {
    app = state.context.read<AppStore>();
    timer = Timer.periodic(
      const Duration(seconds: 3),
      (timer) async {
        await verificar();
      },
    );
    if (!kIsWeb) {
      esperarResposta();
    }
  }

  verificar() async {
    List<Map> list = [];
    list.add(expr("ativa", "_eq", true));
    list.add(expr("id", "_eq", app.usuario?.id));
    list.add(expr("emailVerificado", "_eq", true));

    var sql = sqlHasura(Usuario(), list, [selectFields(Usuario())],excludFields: "senha");
    try {
      var usuario = await selectOneHasura(sql, Usuario());
      app.mostrarSnackBar("Email confirmado");
      var shared = await SharedPreferences.getInstance();
      shared.setString("usuario", usuario.classToString());
      app.usuario = usuario;
      router.go("/logado");
    } on NaoEncontrado catch (e, _) {
      //nada
    } on Exception catch (e, s) {
      myLog(e, s);
    } catch (e, s) {
      myLog(e, s);
    }
  }

  enviar() async {
    try {
      app.startWait();
      Map map = {"usuario": app.usuario?.id};
      if (kIsWeb) {
        map["origin"] = Uri.base.origin;
      } else {
        map["origin"] = "http://localhost:${config.portaApp}";
      }
      var responseBody = await serverJwtPost(map, "verificaEmail");
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

  esperarResposta() async {
    HttpServer server = await HttpServer.bind("0.0.0.0", config.portaApp);
    this.server = server;
    var request = await server.first;
    var queryParameters = request.uri.queryParameters;
    var id = queryParameters["id"];
    await request.response.close();
    server.close();
    router.pushReplacement("/verificaEmail2?id=$id");
  }
}
