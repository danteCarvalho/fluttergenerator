import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:sentry/sentry.dart';

import 'endpoints/shelf_init.dart';
import 'main.reflectable.dart';
import 'outros/config/config.dart';
import 'outros/criar_banco.dart';
import 'outros/logger.dart';
import 'routers.g.dart';
main() async {
  initializeReflectable();
  await configurar(showConfig: true);
  int numberOfProcessors = Platform.numberOfProcessors;
  await criarBanco();
  print("processadores: $numberOfProcessors");

  for (int i = 1; i <= numberOfProcessors; i++) {
    Isolate.spawn(serverStart, {}, debugName: "WWWWWWWW$i");
  }

  serverStart({});

  print("INICIADO");
}

serverStart(Map map) async {
  runZonedGuarded(() async {
    initializeReflectable();
    await configurar();
    await initSentry();
    if (map.containsKey("schedules")) {
      Function init = map["schedules"];
      init.call();
    }
    startShelfServer();
  }, (Object error, StackTrace stack) async {
    await myLog(error, stack);
  });
}

initSentry() async {
  await Sentry.init(
    (options) {
      options.dsn = 'https://aba016e0191e4aa095b4600d80cae295@o1251549.ingest.sentry.io/6417106';
      options.tracesSampleRate = 1.0;
    },
  );
}
