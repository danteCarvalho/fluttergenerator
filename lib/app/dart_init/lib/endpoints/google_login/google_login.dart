import 'dart:convert';
import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:http/http.dart' as http;
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/config/config.dart';
import '../../outros/excecoes.dart';
import '../../outros/security.dart';

part 'google_login.g.dart';
part 'google_login.reflection.g.dart';

@EnableReflection()
@routerAnnotation
class GoogleLoginEndpoint extends RouterMethods {
  @Route.post('/googleLogin')
  Future<Response> googleLogin(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestObj = json.decode(myJson);

    String secret = "";
    if (requestObj["tipo"] == "web") {
      secret = decryptString(config.googleSecretWeb);
    } else if (requestObj["tipo"] == "OS") {
      secret = decryptString(config.googleSecretOS);
    }

    Map map = {};
    map["code"] = requestObj["code"];
    map["client_id"] = requestObj["client_id"];
    map["client_secret"] = secret;
    map["redirect_uri"] = requestObj["redirect_uri"];
    map["grant_type"] = "authorization_code";
    if (requestObj.containsKey("state")) {
      map["state"] = requestObj["state"];
    }

    var uri = Uri.https("oauth2.googleapis.com", "/token");
    http.Response response = await http.post(uri, body: json.encode(map));
    Map token = json.decode(response.body);

    uri = Uri.parse("https://oauth2.googleapis.com/tokeninfo?id_token=${token["id_token"]}");
    response = await http.get(uri);
    Map tokenInfo = json.decode(response.body);

    String returning = "id id2 nome email";

    var sql = sqlHasura(Usuario(), [expr("email", "_eq", tokenInfo["email"])], [returning]);

    Usuario usuario;

    try {
      usuario = await selectOneHasura(sql, Usuario());
    } on NaoEncontrado {
      usuario = Usuario();
      usuario.nome = tokenInfo["name"];
      usuario.email = tokenInfo["email"];
      usuario = await insertHasura(usuario, returning: returning);
    }

    String jwt = Security.criarJwt(usuario);

    return Response.ok(json.encode({"token": token, "tokenInfo": tokenInfo, "usuario": usuario, "jwt": jwt}));
  }

  @Route.get('/googleToken')
  Future<Response> googleToken(Request request) async {
    var aaa = await obtainAccessCredentials();
    var token = aaa;
    return Response.ok(token);
  }

  Future<String> obtainAccessCredentials() async {
    // var client = http.Client();
    //
    // var clientId = ClientId(config.googleClientIdOS, config.googleSecretOS);
    //
    // var scopes = [GmailApi.gmailSendScope, GmailApi.mailGoogleComScope];
    //
    // // Obtain authorization from the user
    // var authClient = await clientViaUserConsent(clientId, scopes, (url) {
    //   print('Please go to the following URL and grant access:');
    //   print('  => $url');
    //   print('Esperando...');
    // },listenPort: config.portaServidor + 1);
    //
    // client.close();
    // return authClient.credentials;
    String gmailSendScope = 'https://www.googleapis.com/auth/gmail.send';
    String mailGoogleComScope = 'https://mail.google.com/';
    String urlOS = "";
    urlOS += "https://accounts.google.com/o/oauth2/v2/auth?";
    urlOS += "scope=$gmailSendScope $mailGoogleComScope&";
    urlOS += "response_type=code&";
    urlOS += "redirect_uri=http://localhost:${config.portaServidor + 1}&";
    urlOS += "client_id=${config.googleClientIdOS}";
    var uri = Uri.parse(urlOS);
    print(uri.toString());

    var server = await HttpServer.bind("0.0.0.0", config.portaServidor + 1);
    var request = await server.first;
    var queryParameters = request.uri.queryParameters;
    await request.response.close();
    server.close();
    Map map = {};
    map["code"] = queryParameters["code"];
    map["client_id"] = config.googleClientIdOS;
    map["client_secret"] = decryptString(config.googleSecretOS);
    map["redirect_uri"] = "http://localhost:${config.portaServidor + 1}";
    map["grant_type"] = "authorization_code";
    uri = Uri.https("oauth2.googleapis.com", "/token");
    http.Response response = await http.post(uri, body: json.encode(map));
    Map token = json.decode(response.body);
    return token["access_token"];
  }

  @override
  Router getRouter() {
    return _$GoogleLoginEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
