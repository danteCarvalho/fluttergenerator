// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagamento_sistema.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$PagamentoSistemaEndpointRouter(PagamentoSistemaEndpoint service) {
  final router = Router();
  router.add(
    'POST',
    r'/addPagamentoSistema',
    service.addPagamentoSistema,
  );
  router.add(
    'POST',
    r'/finalizarPagamentoSistema',
    service.finalizarPagamentoSistema,
  );
  return router;
}
