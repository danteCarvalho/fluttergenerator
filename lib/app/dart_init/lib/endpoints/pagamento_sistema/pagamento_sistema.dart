import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';
import '../../entidades/pagamento_sistema/pagamento_sistema.dart';

part 'pagamento_sistema.g.dart';
part 'pagamento_sistema.reflection.g.dart';
@EnableReflection()
@routerAnnotation
class PagamentoSistemaEndpoint extends RouterMethods {
  @Route.post('/addPagamentoSistema')
  @RouterMethodAnnotation(authorization: true)
  Future<Response> addPagamentoSistema(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    PagamentoSistema pagamentoSistema = PagamentoSistema().mapToClass(requestMap["pagamentoSistema"]);
    pagamentoSistema = await insertHasura(pagamentoSistema);
    resposta["pagamentoSistema"] = pagamentoSistema;
    return Response.ok(json.encode(resposta));
  }

  @Route.post('/finalizarPagamentoSistema')
  @RouterMethodAnnotation(authorization: true)
  Future<Response> finalizarPagamentoSistema(Request request) async {
    String myJson = await utf8.decoder.bind(request.read()).join();
    Map requestMap = json.decode(myJson);
    Map resposta = {};
    String id = requestMap["id"];
    PagamentoSistema pagamentoSistema = await selectByIdHasura(id, PagamentoSistema());
    pagamentoSistema.pago = true;
    pagamentoSistema.dataConfirmado = DateTime.now();
    pagamentoSistema = await updateHasura(pagamentoSistema, updateFields: "pago dataConfirmado");
    resposta["ok"] = "ok";
    return Response.ok(json.encode(resposta));
  }

  @override
  Router getRouter() {
    return _$PagamentoSistemaEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }

}
