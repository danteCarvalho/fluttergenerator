import 'dart:convert';
import 'dart:io';

import 'package:sentry/sentry.dart';

Future<String> myLog(Object error, StackTrace stack) async {
  await Sentry.captureException(error, stackTrace: stack);
  String stack2 = "$error\n";
  LineSplitter.split(stack.toString()).forEach((linha) {
    if (linha.contains("teste/")) {
      var split = linha.split(Platform.isLinux ? "      " : "     ");
      split = split[1].toString().split("(package:");
      stack2 += "(package:${split[1]} ${split[0]}\n";
    }
  });
  print(stack2);
  return stack2;
}
