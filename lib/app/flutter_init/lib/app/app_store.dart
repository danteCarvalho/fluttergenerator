import 'dart:convert';
import 'dart:io';

import 'package:asuka/asuka.dart' as asuka;
import 'package:dartutils/dartutils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

import 'entidades/usuario/usuario.dart';
import 'outros/config.dart';
import 'requests/google_login.dart';
import 'requests/verifica_atualiza_jwt.dart';

part 'app_store.g.dart';

class AppStore = AppStoreBase with _$AppStore;



abstract class AppStoreBase with Store {
  @observable
  bool iniciado = false;
  @observable
  Usuario? usuario;
  List<BuildContext> contexts = [];
  Database? db;

  init() async {
    var shared = await SharedPreferences.getInstance();
    usuario = shared.containsKey("usuario") ? Usuario().stringToClass(shared.getString("usuario")!) : null;
    verificaJwt();
    iniciado = true;
  }



  verificaJwt()async{
    var shared = await SharedPreferences.getInstance();
    var jwt = shared.getString("jwt");
    if (jwt != null) {
      Map map = {};
      map["jwt"] = jwt;
      map["usuarioId"] = usuario?.id;
      var responseBody = await verificaAtualizaJwt(map);
      if (!nuloOuvazio([responseBody])) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("jwt")) {
          await shared.setString("jwt", responseMap["jwt"]);
        }
        else if(responseMap.containsKey("mensagem")){
          mostrarSnackBar(responseMap["mensagem"]);
        }
      }
    }
  }


  mostrarSnackBar(String texto) {
    asuka.showSnackBar(SnackBar(
      content: Text(texto),
    ));
  }

  dialog(Widget dialog) {
    asuka.showDialog(
      builder: (context) {
        contexts.add(context);
        return dialog;
      },
    );
  }

  pop() async {
    var list = [];
    for (var obj in contexts) {
      try {
        obj.size;
      } catch (e) {
        list.add(obj);
      }
    }
    for (var obj in list) {
      contexts.remove(obj);
    }
    Navigator.of(contexts.removeLast()).pop();
  }

  logarWeb() async {
    String urlJavascript = "";
    urlJavascript += "https://accounts.google.com/o/oauth2/v2/auth?";
    urlJavascript += "scope=email openid profile&";
    urlJavascript += "response_type=code&";
    urlJavascript += "state=${Modular.to.path}&";
    urlJavascript += "redirect_uri=${Uri.base.origin}/googleLogin/&";
    urlJavascript += "client_id=44265153130-1i4ub5c40hjq8i6420j5d71dc601ump1.apps.googleusercontent.com";
    var uri = Uri.parse(urlJavascript);
    launchUrl(uri, webOnlyWindowName: "_self");
  }

  logarOS() async {
    String urlOS = "";
    urlOS += "https://accounts.google.com/o/oauth2/v2/auth?";
    urlOS += "scope=email openid profile&";
    urlOS += "response_type=code&";
    urlOS += "redirect_uri=http://localhost:${config.portaApp}&";
    urlOS += "client_id=44265153130-ifekhq2splh4lcf25tuvhrikaha73dhf.apps.googleusercontent.com";
    var uri = Uri.parse(urlOS);
    launchUrl(uri);
    var server = await HttpServer.bind("0.0.0.0", config.portaApp);
    server.listen((HttpRequest request) async {
      var queryParameters = request.uri.queryParameters;
      await request.response.close();
      server.close();

      Map map = {};
      map["code"] = queryParameters["code"];
      map["client_id"] = "44265153130-ifekhq2splh4lcf25tuvhrikaha73dhf.apps.googleusercontent.com";
      map["redirect_uri"] = "http://localhost:${config.portaApp}";
      map["tipo"] = "OS";
      var responseBody = await googleLogin(map);
      if (nuloOuvazio([responseBody])) {
        return;
      }
      Map responseMap = json.decode(responseBody);
      if (responseMap.containsKey("mensagem")) {
        mostrarSnackBar(responseMap["mensagem"]);
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

      this.usuario = usuario;
    });
  }

  sair() async {
    var shared = await SharedPreferences.getInstance();
    shared.remove("token");
    shared.remove("tokenInfo");
    shared.remove("jwt");
    shared.remove("usuario");
    usuario = null;
    Modular.to.popUntil((p0) => false);
    Modular.to.pushReplacementNamed("/home/");
  }

  initSembast() async {
    if (db != null) {
      return;
    }
    if (kIsWeb) {
      db = await databaseFactoryWeb.openDatabase(config.sembastDbName);
    } else if (Platform.isAndroid) {
      var dir = await getExternalStorageDirectory();
      if (dir != null) {
        await dir.create(recursive: true);
        var dbPath = "${dir.path}/${config.sembastDbName}";
        db = await databaseFactoryIo.openDatabase(dbPath);
      }
    } else {
      var home = Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];
      if (home != null) {
        var dir = Directory(home);
        var dbPath = "${dir.path}/${config.sembastDbName}";
        db = await databaseFactoryIo.openDatabase(dbPath);
      }
    }
  }

  deleteSembast() async {
    Database? database = db;
    if (database == null) {
      return;
    } else {
      await database.close();
    }
    db = null;
    if (kIsWeb) {
      databaseFactoryWeb.deleteDatabase(database.path);
    } else {
      databaseFactoryIo.deleteDatabase(database.path);
    }
  }
}
