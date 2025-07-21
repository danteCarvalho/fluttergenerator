import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'app/app_module.dart';
import 'app/app_store.dart';
import 'app/app_widget.dart';
import 'app/outros/config/config.dart';
import 'app/outros/logger.dart';
import 'main.reflectable.dart';

main() async {
  runZonedGuarded(() async {
    SentryWidgetsFlutterBinding.ensureInitialized();
    initializeReflectable();
    await configurar();
    usePathUrlStrategy();
    await initSentry();
    runApp(ModularApp(module: AppModule(), child: const AppWidget()));
  }, (Object error, StackTrace stack) async {
    String stack2 = await myLog(error, stack);
    AppStore app = Modular.get();
    app.mostrarSnackBar(stack2);
  });
}

initSentry() async {
  await SentryFlutter.init(
        (options) {
      options.dsn = 'https://aba016e0191e4aa095b4600d80cae295@o1251549.ingest.sentry.io/6417106';
      options.tracesSampleRate = 1.0;
    },
  );
}
