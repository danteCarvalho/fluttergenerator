import 'dart:convert';


import '../../pubspec.dart';

myLog(Object error, StackTrace stack) async {
  String stack1 = error.toString();
  String stack2 = "";
  LineSplitter.split(stack.toString()).forEach((linha) {
    if (linha.contains("${Pubspec.name}/")) {
        stack2 += "$linha\n";
    }
  });
  var dateTime = DateTime.now();
  var retorno = "$dateTime\n$stack1\n$stack2";
  print("AAAAAAAAAAAAAAAA\n$retorno\nWWWWWWWWWWWWWWWWW");
  return retorno;
}
