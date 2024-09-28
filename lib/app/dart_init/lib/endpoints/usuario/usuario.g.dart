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
  router.add(
    'POST',
    r'/verificaEmail',
    service.verificaEmail,
  );
  router.add(
    'POST',
    r'/verificaEmail2',
    service.verificaEmail2,
  );
  router.add(
    'POST',
    r'/esqueciSenha',
    service.esqueciSenha,
  );
  router.add(
    'POST',
    r'/esqueciSenha2',
    service.esqueciSenha2,
  );
  return router;
}
