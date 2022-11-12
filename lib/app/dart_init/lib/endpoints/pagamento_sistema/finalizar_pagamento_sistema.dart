
import 'dart:convert';
import 'dart:io';

import '../../daos/hasura_dao.dart';
import '../../entidades/pagamento_sistema/pagamento_sistema.dart';

finalizarPagamentoSistema(HttpRequest request) async {
  String requestString = await utf8.decoder.bind(request).join();
  Map requestMap = json.decode(requestString);
  Map resposta = {};
  String id = requestMap["id"];
  PagamentoSistema pagamentoSistema = await selectByIdHasura(id, PagamentoSistema());
  pagamentoSistema.pago = true;
  pagamentoSistema.dataConfirmado = DateTime.now();
  pagamentoSistema = await updateHasura(pagamentoSistema, "pago dataConfirmado");
  resposta["ok"] = "ok";
  request.response.write(json.encode(resposta));
}

  

  