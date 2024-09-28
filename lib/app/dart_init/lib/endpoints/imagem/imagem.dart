import 'dart:convert';
import 'dart:io';

import 'package:aws_s3_api/s3-2006-03-01.dart' as amazon;
import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/imagem/imagem.dart';
import '../../outros/config/config.dart';

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
    imagem = await saveImage(imagem);
    resposta["imagem"] = imagem;
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/editImagem')
  Future<Response> editImagem(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    Imagem imagem = Imagem().mapToClass(requestMap["imagem"]);
    imagem = await saveImage(imagem);
    if (config.imageStorage == "server") {
      Directory imagens = Directory("${Directory.systemTemp.path}/imagens");
      imagens.createSync();
      File file = File("${imagens.path}/${imagem.id!}.${imagem.extension}");
      var decode = base64.decode(imagem.value);
      file.writeAsBytesSync(decode);
    }
    resposta["imagem"] = imagem;
    return Response.ok(json.encode(resposta));
  }

  @Route.get('/getImagem')
  Future<Response> getImagem(Request request) async {
    Map queryParameters = request.requestedUri.queryParameters;
    String id = queryParameters["id"];
    Imagem imagem = await selectByIdHasura(id, Imagem(), returning: "id extension");
    Directory imagens = Directory("${Directory.systemTemp.path}/imagens");
    imagens.createSync();
    File file = File("${imagens.path}/${imagem.id!}.${imagem.extension}");
    if (!file.existsSync()) {
      Imagem imagem = await selectByIdHasura(id, Imagem());
      var decode = base64.decode(imagem.value);
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

saveImage2(Imagem imagem) async {
  if (imagem.id == null) {
    return await insertHasura(imagem);
  } else {
    return await updateHasura(imagem);
  }
}

Future<Imagem> saveImage(Imagem imagem) async {
  if (config.imageStorage == "server") {
    imagem = await saveImage2(imagem);
  } else {
    var value = imagem.value;
    imagem.value = "";
    imagem = await saveImage2(imagem);
    var s3 = amazon.S3(
      region: "us-east-1",
      credentials: amazon.AwsClientCredentials(accessKey: config.imageAccessKey, secretKey: config.imageSecretKey),
    );
    String key = 'images/${imagem.id}';
    var decode = base64.decode(value);
    String contentType = "image/${imagem.extension}";

    amazon.PutObjectOutput output = await s3.putObject(
      bucket: "danteteste",
      key: key,
      body: decode,
      contentType: contentType,
    );
  }
  return imagem;
}
