// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'teste.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$TesteEndpointRouter(TesteEndpoint service) {
  final router = Router();
  router.add(
    'GET',
    r'/teste',
    service.teste,
  );
  router.add(
    'GET',
    r'/teste2',
    service.teste2,
  );
  return router;
}
