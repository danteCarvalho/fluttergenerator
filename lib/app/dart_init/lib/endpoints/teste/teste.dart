import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

part 'teste.g.dart';


@routerAnnotation
class TesteEndpoint extends RouterMethods {
  @Route.get('/teste')
  Future<Response> teste(Request request) async {
    return Response.ok("Hello World!");
  }

  @override
  Router getRouter() {
    return _$TesteEndpointRouter(this);
  }
}
