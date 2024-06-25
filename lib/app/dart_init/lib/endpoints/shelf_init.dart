import 'package:dartutils/dartutils.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_server;
import 'package:shelf_router/shelf_router.dart';

import '../outros/config/config.dart';
import 'middlewares/exception_middle.dart';
import 'middlewares/headers_middle.dart';
import 'middlewares/jtw_middle.dart';

startShelfServer() async {
  var pipeline = const Pipeline().addMiddleware(logRequests()).addMiddleware(exceptionMiddleware()).addMiddleware( jwtMiddleware()).addMiddleware(headersMiddleware());
  var annotatedClasses = routerAnnotation.annotatedClasses;
  List<Type> routeClasses = [];
  for (var classMirror in annotatedClasses) {
    routeClasses.add(classMirror.reflectedType);
  }
  Router router = getRoutersByClass(routeClasses);
  Router router2 = Router();
  router2.mount("/api", router.call);
  var handler = pipeline.addHandler(router2.call);
  var server = await shelf_server.serve(handler, "0.0.0.0", config.portaServidor, shared: true);
  print('Serving at http://${server.address.host}:${server.port}');
}
