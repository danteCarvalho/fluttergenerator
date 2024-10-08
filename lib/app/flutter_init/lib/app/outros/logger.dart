import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:sentry/sentry.dart';

myLog(Object error, StackTrace stack) async {
  await Sentry.captureException(error, stackTrace: stack);
  String stack1 = error.toString();
  String stack2 = "";
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
  var retorno = "$stack1\n$stack2";
  debugPrint(retorno);
  return retorno;
}
