import 'package:shelf/shelf.dart';

import '../../outros/logger.dart';

Middleware exceptionMiddleware() {
  return createMiddleware(
    errorHandler: (error, stack) async{
      var log = await myLog(error, stack);
      return Response.internalServerError(body: log);
    },
  );
}
