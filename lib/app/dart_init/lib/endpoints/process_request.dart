import 'dart:convert';
import 'dart:io';

import '../outros/security.dart';
import 'links.dart';

processRequest(HttpRequest request, HttpServer server) async {
  try {
    var path = request.uri.path;
    request.response.headers.add("Access-Control-Allow-Origin", "*");
    request.response.headers.add("Access-Control-Allow-Headers", "*");
    if (request.method == "OPTIONS") {
    } else if (request.method == "POST") {
      request.response.headers.contentType = ContentType.json;
      if (!Links.excecoes.contains(path)) {
        Security.verificarJwt(request);
      }
      await Links.posts[path]?.call(request);
    } else if (request.method == "GET") {
      if (!Links.excecoes.contains(path)) {
        Security.verificarJwt(request);
      }
      await Links.gets[path]?.call(request);
    }
  } catch (e) {
    request.response.statusCode = 500;
    request.response.write(json.encode({"error": e.toString()}));
    rethrow;
  } finally {
    await request.response.close();
  }
}
