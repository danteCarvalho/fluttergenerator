import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Methods': '*',
  'Access-Control-Allow-Headers': '*',
};

Middleware responseMiddleware() {
  return createMiddleware(
    responseHandler: (Response response) {
      if (response == Router.routeNotFound) {
        Map resposta = {"mensagem": "Rota não encontrada"};
        return response.change(body: json.encode(resposta),headers: corsHeaders);
      }
      return response.change(headers: corsHeaders);
    },
  );
}
