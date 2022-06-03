  
import 'dart:convert';
import 'dart:io';

import '../../daos/hasura_dao.dart';
import '../../entidades/pagamento_sistema/pagamento_sistema.dart';

addPagamentoSistema(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  Map resposta = {};
  PagamentoSistema pagamentoSistema = PagamentoSistema().mapToClass(requestMap["pagamentoSistema"]);
  pagamentoSistema = await insertHasura(pagamentoSistema);
  resposta["pagamentoSistema"] = pagamentoSistema;
  request.response.write(json.encode(resposta));
}

  
  