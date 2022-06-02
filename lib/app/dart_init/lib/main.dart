import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:isolate';

import 'package:sentry/sentry.dart';
import 'package:teste/schedules/init_schedules.dart';

import 'endpoints/process_request.dart';
import 'main.reflectable.dart';
import 'outros/config.dart';
import 'postgres/criar_banco.dart';

main() async {

  initializeReflectable();

  await configurar();

  await criarBanco();

  int numberOfProcessors = Platform.numberOfProcessors;

  print("processadores: $numberOfProcessors");

  for (int i = 1; i <= numberOfProcessors; i++) {
    Isolate.spawn(serverStart, {}, debugName: "WWWWWWWW$i");
  }

  serverStart({"schedules":initSchedules});

  print("INICIADO");
}

serverStart(Map map) async {
  runZonedGuarded(() async {
    initializeReflectable();
    await Sentry.init(
          (options) {
        options.dsn = 'https://aba016e0191e4aa095b4600d80cae295@o1251549.ingest.sentry.io/6417106';
        options.tracesSampleRate = 1.0;
      },
    );
    if(map.containsKey("schedules")){
      Function init = map["schedules"];
      init.call();
    }
    HttpServer server = await HttpServer.bind("0.0.0.0", config.portaServidor, shared: true);

    server.listen((HttpRequest request) {
      processRequest(request, server);
    });
  }, (Object error, StackTrace stack) async {
    await Sentry.captureException(error, stackTrace: stack);
    print(error);
    String stack2 = "";
    LineSplitter.split(stack.toString()).forEach((s) {
      if (s.contains("teste/")) {
        stack2 += "$s\n";
      }
    });
    print(stack2);
  });
}
