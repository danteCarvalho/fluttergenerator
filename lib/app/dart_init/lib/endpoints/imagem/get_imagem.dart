import 'dart:convert';
import 'dart:io';

import '../../daos/hasura_dao.dart';
import '../../entidades/imagem/imagem.dart';

getImagem(HttpRequest request) async {
  Map queryParameters = request.requestedUri.queryParameters;
  String id = queryParameters["id"];
  Directory imagens = Directory("${Directory.systemTemp.path}/imagens");
  imagens.createSync();
  File? file;
  for(var obj in imagens.listSync()){
    if(obj.path.contains(id)){
      file = File(obj.path);
      break;
    }
  }
  if (file == null) {
    Imagem imagem = await selectByIdHasura(id, Imagem());
    var decode = base64.decode(imagem.value!);
    var type = imagem.name!.split(".").last;
    file = File("${imagens.path}/$id.$type" );
    file.writeAsBytesSync(decode);
  }
  request.response.headers.contentType = ContentType("image",file.path.split(".").last);
  request.response.add(file.readAsBytesSync());
}
