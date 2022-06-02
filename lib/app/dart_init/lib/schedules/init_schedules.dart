import 'dart:math';

import 'busca_pagamentos_sistema.dart';

initSchedules() async {
  var random = Random();
  Future.delayed(Duration(minutes:5, seconds: random.nextInt(60)), buscarPagamentosSistema);
}
