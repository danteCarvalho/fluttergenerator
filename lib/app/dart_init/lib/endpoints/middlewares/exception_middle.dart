import 'dart:convert';

import 'package:shelf/shelf.dart';

import '../../outros/logger.dart';

Middleware exceptionMiddleware() {
  return createMiddleware(
    errorHandler: (error, stack) async {
      var log = await myLog(error, stack);
      Map resposta = {"mensagem": log};
      return Response.internalServerError(body: json.encode(resposta));
    },
  );
}
