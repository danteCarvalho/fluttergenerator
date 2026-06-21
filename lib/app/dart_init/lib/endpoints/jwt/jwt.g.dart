// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$JwtEndpointRouter(JwtEndpoint service) {
  final router = Router();
  router.add(
    'POST',
    r'/verificaJwt',
    service.verificaAtualizaJwt,
  );
  return router;
}
