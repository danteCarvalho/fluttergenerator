import 'package:dartutils/dartutils.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_server;
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_static/shelf_static.dart';

import '../outros/config/config.dart';
import 'middlewares/exception_middle.dart';
import 'middlewares/renponse_middle.dart';
import 'middlewares/request_middle.dart';

startShelfServer() async {
  var annotatedClasses = routerAnnotation.annotatedClasses;
  List<Type> routeClasses = [];
  for (var classMirror in annotatedClasses) {
    routeClasses.add(classMirror.reflectedType);
  }
  var excecoes = noAuthMethods(routeClasses);
  Router router = getRoutersByClass(routeClasses);
  var pipeline = const Pipeline().addMiddleware(logRequests()).addMiddleware(exceptionMiddleware()).addMiddleware(renponseMiddleware()).addMiddleware(requestMiddleware(excecoes));
  var handler = pipeline.addHandler(router.call);
  var hand = createStaticHandler("files");
  var handler2 = Cascade().add(hand).add(handler).handler;
  var server = await shelf_server.serve(handler2, "0.0.0.0", config.portaServidor, shared: true);
  print('Serving at http://${server.address.host}:${server.port}');
}
