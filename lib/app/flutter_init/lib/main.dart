import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:url_strategy/url_strategy.dart';

import 'app/app_module.dart';
import 'app/app_store.dart';
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
    String stack2 = "$error\n";
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    LineSplitter.split(stack.toString()).forEach((linha) {
      if (linha.contains("${packageInfo.appName}/")) {
        if (linha.startsWith("../packages/")) {
          var split = linha.split(" ");
          var package = split[0].replaceFirst("../packages/", "(package:");
          stack2 += "$package:${split[1]}) ${split[split.length - 1]}\n";
        } else {
          var split = linha.split("      ");
          split = split[1].toString().split("(package:");
          stack2 += "(package:${split[1]} ${split[0]}\n";
        }
      }
    });
    debugPrint(stack2);
    AppStore app = Modular.get();
    app.mostrarSnackBar(stack2);
  });
}
