import 'dart:convert';
import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../app_store.dart';
import 'package:url_launcher/url_launcher.dart';

import '../entidades/usuario/usuario.dart';
import '../requests/server_requets.dart';
import 'config.dart';

void uriTest() {
  Modular.to.path;
  Modular.args.uri.scheme;
  Modular.args.uri.path;
  Modular.args.uri.host;
  Modular.args.uri.query;
  Modular.args.uri.authority;
  Modular.args.uri.origin;
  Modular.args.uri.userInfo;
  Modular.args.uri.pathSegments;
  Modular.args.uri.port;
  Modular.args.uri.fragment;
  Modular.args.uri.data;
  Uri.base.scheme;
  Uri.base.path;
  Uri.base.host;
  Uri.base.query;
  Uri.base.authority;
  Uri.base.origin;
  Uri.base.userInfo;
  Uri.base.pathSegments;
  Uri.base.port;
  Uri.base.fragment;
  Uri.base.data;
}

googleLoginWeb() async {
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

googleLoginOs() async {
  AppStore app = Modular.get<AppStore>();
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
    var responseBody = await serverPost(map, "googleLogin");
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
  });
}

verificaJwt() async {
  AppStore app = Modular.get<AppStore>();
  var shared = await SharedPreferences.getInstance();
  var jwt = shared.getString("jwt");
  if (jwt != null) {
    Map map = {};
    map["jwt"] = jwt;
    map["usuarioId"] = app.usuario?.id;
    var responseBody = await serverPost(map, "verificaAtualizaJwt");
    if (!nuloOuvazio([responseBody])) {
      Map responseMap = json.decode(responseBody);
      if (responseMap.containsKey("jwt")) {
        await shared.setString("jwt", responseMap["jwt"]);
      } else if (responseMap.containsKey("mensagem")) {
        app.mostrarSnackBar(responseMap["mensagem"]);
      }
    }
  }
}
