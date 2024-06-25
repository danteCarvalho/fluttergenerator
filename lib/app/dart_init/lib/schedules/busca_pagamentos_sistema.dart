import 'dart:math';

import 'package:dart_date/dart_date.dart';
import 'package:mercadopago_sdk/mercadopago_sdk.dart';

import '../daos/hasura_dao.dart';
import '../entidades/pagamento_sistema/pagamento_sistema.dart';
import '../outros/excecoes.dart';

MP getMp() {
  // var mp = MP.fromAccessToken("TEST-2997362044584823-052123-be4b79be6d99b0204f4c78faba69711f-154167075");
  var mp = MP.fromAccessToken("APP_USR-2997362044584823-052123-680e3917e24fbd12374bba9c357088ef-154167075");
  return mp;
}

buscarPagamentosSistema() async {
  try {
    List<Map> list = [];
    list.add(expr("ativa", "_eq", true));
    list.add(expr("pago", "_eq", false));
    list.add(expr("datacriacao", "_lt", DateTime.now().subMinutes(5)));
    var sql = sqlHasura(PagamentoSistema(), list, [selectFields(PagamentoSistema())]);
    List<PagamentoSistema> pagamentos;
    try {
      pagamentos = await selectListHasura(sql, PagamentoSistema());
    } on NaoEncontrado catch (_) {
      return;
    }
    var mp = getMp();
    for (var obj in pagamentos) {
      var differenceInDays = obj.dataCriacao!.differenceInDays(DateTime.now());
      if (differenceInDays > 1) {
        obj.ativa = false;
        await updateHasura(obj, updateFields: "ativa");
        continue;
      }
      Map<String, dynamic> result;
      if (obj.qrCode != null) {
        result = await mp.getPayment(obj.referencia!);
      } else {
        result = await mp.getPreference(obj.referencia!);
      }
      var status = result["response"]?["status"];
      if (status == "approved") {
        obj.pago = true;
        obj.dataConfirmado = DateTime.now();
        await updateHasura(obj, updateFields: "pago dataConfirmado");
        if (obj.empresa != null) {
          var empresa = obj.empresa!;
          empresa.dataPagamento = DateTime.now().addDays(30);
          empresa.ultimoPagamentoCompleto = DateTime.now();
          await updateHasura(empresa, updateFields: "dataPagamento ultimoPagamentoCompleto");
        } else if (obj.usuario != null) {
          var usuario = obj.usuario!;
          usuario.dataPagamento = DateTime.now().addDays(30);
          usuario.ultimoPagamentoCompleto = DateTime.now();
          await updateHasura(usuario, updateFields: "dataPagamento ultimoPagamentoCompleto");
        }
      }
    }
  } finally {
    Future.delayed(Duration(minutes: 2, seconds: Random().nextInt(60)), buscarPagamentosSistema);
  }
}
