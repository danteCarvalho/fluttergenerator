  
import 'dart:convert';
import 'dart:io';

import '../../entidades/imagem/imagem.dart';
import '../../daos/hasura_dao.dart';

addImagem(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  Map resposta = {};
  Imagem imagem = Imagem().mapToClass(requestMap["imagem"]);
  imagem = await insertHasura(imagem);
  resposta["imagem"] = imagem;
  request.response.write(json.encode(resposta));
}

  
  