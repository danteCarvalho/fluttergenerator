// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$UsuarioEndpointRouter(UsuarioEndpoint service) {
  final router = Router();
  router.add(
    'POST',
    r'/addUsuario',
    service.addUsuario,
  );
  router.add(
    'POST',
    r'/editUsuario',
    service.editUsuario,
  );
  return router;
}
