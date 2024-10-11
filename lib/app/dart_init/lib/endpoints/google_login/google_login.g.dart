// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'google_login.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$GoogleLoginEndpointRouter(GoogleLoginEndpoint service) {
  final router = Router();
  router.add(
    'POST',
    r'/googleLogin',
    service.googleLogin,
  );
  router.add(
    'GET',
    r'/googleToken',
    service.googleToken,
  );
  return router;
}
