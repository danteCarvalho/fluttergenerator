import 'package:shelf/shelf.dart';

Middleware headersMiddleware() {
  return createMiddleware(
    responseHandler: (Response response) {
      Map<String, Object?> headers = {};
      headers["Access-Control-Allow-Origin"] = "*";
      headers["Access-Control-Allow-Headers"] = "*";
      return response.change(headers: headers);
    },
  );
}
