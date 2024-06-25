import 'dart:convert';

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
      secret = config.googleSecretWeb;
    } else if (requestObj["tipo"] == "OS") {
      secret = config.googleSecretOS;
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

  @override
  Router getRouter() {
    return _$GoogleLoginEndpointRouter(this);
  }
  @override
  ClassReflection reflect() {
    return reflection;
  }
}
