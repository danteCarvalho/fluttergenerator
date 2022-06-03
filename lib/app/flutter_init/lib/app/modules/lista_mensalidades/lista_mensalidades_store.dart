import 'dart:async';
import 'dart:convert';

import 'package:async/async.dart';
import 'package:dartutils/dartutils.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import '../../requests/server_requets.dart';

import '../../app_store.dart';
import '../../entidades/pagamento_sistema/pagamento_sistema.dart';
import '../../outros/excecoes.dart';
import '../../outros/mercado_pago.dart';
import '../../daos/hasura_dao.dart';

part 'lista_mensalidades_store.g.dart';

class ListaMensalidadesStore = ListaMensalidadesStoreBase with _$ListaMensalidadesStore;

abstract class ListaMensalidadesStoreBase with Store {
  AppStore app = Modular.get();
  @observable
  List<PagamentoSistema>? mensalidades;
  String? id;

  Timer? timer;
  CancelableOperation? cancelableOperation;
  PagamentoSistema? pagamentoSistema;

  @action
  init() async {
    var usuario = app.usuario!;
    List<Map> list = [];
    list.add(expr("ativa", "_eq", true));
    list.add(expr("usuario.id", "_eq", usuario.id));
    var sql = sqlHasura(PagamentoSistema(), list, [selectFields(PagamentoSistema())]);
    try {
      mensalidades = await selectListHasura(sql, PagamentoSistema());
    } on NaoEncontrado {}
  }

  iniciarPagamento() async {
    var usuario = app.usuario!;

    Map result = await PagamentoSistemaUtil.criarPagamento(5);
    if (result["response"]?["id"] == null) {
      app.mostrarSnackBar("Erro ao gerar Pix");
      return;
    }
    var pix = result["response"]["point_of_interaction"]["transaction_data"];
    PagamentoSistema pagamentoSistema = PagamentoSistema();
    pagamentoSistema.usuario = usuario;
    pagamentoSistema.qrCode = pix["qr_code"];
    pagamentoSistema.pago = false;
    pagamentoSistema.valor = 5;
    id = result["response"]?["id"].toString();
    pagamentoSistema.referencia = id;
    Map map = {};
    map["pagamentoSistema"] = pagamentoSistema;
    var responseBody = await serverJwtPost(map,"addPagamentoSistema");
    if (!nuloOuvazio([responseBody])) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("pagamentoSistema")) {
          this.pagamentoSistema =  PagamentoSistema.fromJson(responseMap["pagamentoSistema"]);
        }
        else if(responseMap.containsKey("mensagem")){
          app.mostrarSnackBar(responseMap["mensagem"]);
          return;
        }
    }



    timer = Timer(const Duration(seconds: 10), verificaPix);
    await PagamentoSistemaUtil.mostarQrcode(result);
    cancelableOperation?.cancel();
    timer?.cancel();
  }

  verificaPix() async {
    cancelableOperation = CancelableOperation.fromFuture(PagamentoSistemaUtil.buscarPagamento(id!));
    Map result = await cancelableOperation?.value;
    if (result["response"]?["status"] == null) {
      return;
    }
    var status = result["response"]?["status"];
    if (status == "approved") {

      Map map ={"pagamentoSistema":pagamentoSistema};
      var responseBody = await serverJwtPost(map, "finalizarPagamentoSistema");
      if (!nuloOuvazio([responseBody])) {
          Map responseMap = json.decode(responseBody);
          if (responseMap.containsKey("algo")) {
             var obj =  responseMap["algo"];
          }
          else if(responseMap.containsKey("mensagem")){
            app.mostrarSnackBar(responseMap["mensagem"]);
          }
      }
      await app.pop();
      app.mostrarSnackBar("Pix aprovado");
      return;
    }

    timer = Timer(const Duration(seconds: 10), verificaPix);
  }
}
