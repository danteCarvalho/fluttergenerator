import 'dart:math';
import 'package:cron/cron.dart';

import 'busca_pagamentos_sistema.dart';

initSchedules() async {
  var random = Random();
  Future.delayed(Duration(minutes:5, seconds: random.nextInt(60)), buscarPagamentosSistema);

  final cron = Cron();
  // Test cron: runs every minute
  cron.schedule(Schedule.parse('*/1 * * * *'), () async {
    print('Cron job executado em: ${DateTime.now()}');
  });
}
