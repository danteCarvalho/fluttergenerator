import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app/app_providers.dart';
import 'app/app_widget.dart';
import 'app/outros/config/config.dart';
import 'app/outros/config/url_strategy_native.dart'
    if (dart.library.js_util) 'app/outros/config/url_strategy_web.dart';
import 'app/outros/logger.dart';
import 'main.reflectable.dart';

main() async {
  runZonedGuarded(() async {
    SentryWidgetsFlutterBinding.ensureInitialized();
    initializeReflectable();
    await configurar();
    configureUrlStrategy();
    await initSentry();
    FlutterError.onError = (FlutterErrorDetails details)async {
      await myLog(details.exception, details.stack);
    };
    runApp(
      MultiProvider(
        providers: providers,
        child: const AppWidget(),
      ),
    );
  }, (Object error, StackTrace stack) async {
    await Sentry.captureException(error, stackTrace: stack);
    await myLog(error, stack);
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
