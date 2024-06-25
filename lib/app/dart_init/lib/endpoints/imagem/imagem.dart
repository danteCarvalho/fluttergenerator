import 'dart:convert';
import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/imagem/imagem.dart';

part 'imagem.g.dart';
part 'imagem.reflection.g.dart';
@EnableReflection()
@routerAnnotation
class ImagemEndpoint extends RouterMethods {
  @Route.post('/addImagem')
  Future<Response> addImagem(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    Imagem imagem = Imagem().mapToClass(requestMap["imagem"]);
    imagem = await insertHasura(imagem);
    resposta["imagem"] = imagem;
    return Response.ok(json.encode(resposta));
  }

  @Route.get('/getImagem')
  Future<Response> getImagem(Request request) async {
    Map queryParameters = request.requestedUri.queryParameters;
    String id = queryParameters["id"];
    Directory imagens = Directory("${Directory.systemTemp.path}/imagens");
    imagens.createSync();
    File? file;
    for (var obj in imagens.listSync()) {
      if (obj.path.contains(id)) {
        file = File(obj.path);
        break;
      }
    }
    if (file == null) {
      Imagem imagem = await selectByIdHasura(id, Imagem());
      var decode = base64.decode(imagem.value!);
      var type = imagem.name!.split(".").last;
      file = File("${imagens.path}/$id.$type");
      file.writeAsBytesSync(decode);
    }
    Map<String, Object> headers = {};
    headers["image"] = file.path.split(".").last;
    return Response.ok(file.readAsBytesSync(), headers: headers);
  }

  @override
  Router getRouter() {
    return _$ImagemEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
