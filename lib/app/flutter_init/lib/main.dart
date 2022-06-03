import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/outros/config.dart';
import 'main.reflectable.dart';

main() async {
  runZonedGuarded(() async{
    WidgetsFlutterBinding.ensureInitialized();
    configurar();
    initializeReflectable();
    setPathUrlStrategy();
    await SentryFlutter.init(
          (options) {
        options.dsn = 'https://aba016e0191e4aa095b4600d80cae295@o1251549.ingest.sentry.io/6417106';
        options.tracesSampleRate = 1.0;
      },
    );
    runApp(ModularApp(module: AppModule(), child: const AppWidget()));
  }, (Object error, StackTrace stack) async {
    await Sentry.captureException(error, stackTrace: stack);
    debugPrint(error.toString());
    String stack2 = "";
    LineSplitter.split(stack.toString()).forEach((s) {
      if (s.contains("teste/")) {
        stack2 += "$s\n";
      }
    });
    debugPrint(stack2);
  });
}
