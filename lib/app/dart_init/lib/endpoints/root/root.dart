import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../../daos/hasura_dao.dart';

part 'root.g.dart';

part 'root.reflection.g.dart';

@EnableReflection()
@routerAnnotation
class RootEndpoint extends RouterMethods {
  @Route.get('/')
  Future<Response> teste(Request request) async {
    return Response.ok("Hello World!");
  }

  @override
  Router getRouter() {
    return _$RootEndpointRouter(this);
  }

  @override
  ClassReflection reflect() {
    return reflection;
  }
}
