// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imagem.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$ImagemEndpointRouter(ImagemEndpoint service) {
  final router = Router();
  router.add(
    'POST',
    r'/addImagem',
    service.addImagem,
  );
  router.add(
    'POST',
    r'/editImagem',
    service.editImagem,
  );
  router.add(
    'GET',
    r'/getImagem',
    service.getImagem,
  );
  return router;
}
