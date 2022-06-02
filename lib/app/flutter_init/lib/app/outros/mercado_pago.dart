import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutterutils/flutterutils.dart';
import 'package:mercadopago_sdk/mercadopago_sdk.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:teste/app/app_store.dart';
import 'package:url_launcher/url_launcher.dart';

MP getMp() {
  // var mp = MP.fromAccessToken("TEST-2997362044584823-052123-be4b79be6d99b0204f4c78faba69711f-154167075");
  var mp = MP.fromAccessToken("APP_USR-2997362044584823-052123-680e3917e24fbd12374bba9c357088ef-154167075");
  return mp;
}

buscarPagamento(String id) async {
  var mp = getMp();
  var result = await mp.getPayment(id);
 return result;
}

buscarPreferencia(String id) async {
  var mp = getMp();
  var result = await mp.getPreference(id);
  return result;
}

criarPagamento() async {
  var mp = getMp();
  var pagamento = {
    "transaction_amount": 5,
    "description": "Título do produto",
    "payment_method_id": "pix",
    "payer": {
      "email": "test@test.com",
    }
  };

  var result = await mp.post("/v1/payments", data: pagamento);
  return result;



}

mostarQrcode(Map result,AppStore app){
  var pix = result["response"]["point_of_interaction"]["transaction_data"];

  var qrcode = LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      var texto = Container(
        width: porcentagemMenorLado(context, 70),
        child: Text(pix["qr_code"]),
      );
      var copiar = ElevatedButton(
        child: Text("Pix copia e cola"),
        onPressed: () {
          FlutterClipboard.copy(pix["qr_code"]);
          app.mostrarSnackBar("Texto copiado");
        },
      );
      var qrcode = Dialog(
        child: QrImage(
          data: pix["qr_code"],
        ),
      );
      var valor = Text("Valor: ${result["response"]["transaction_amount"]} R\$");
      List<Widget> columnWidgets = [];
      var column = Column(
        children: columnWidgets,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
      );
      columnWidgets.add(valor);
      columnWidgets.add(Expanded(child: qrcode));
      columnWidgets.add(copiar);
      columnWidgets.add(texto);
      return column;
    },
  );

  Dialog dialog = Dialog(
    child: qrcode,
  );
  app.dialog(dialog);
}


criarPreferencia() async {
  var mp = getMp();
  var preference = {
    "payer": {"email": "test@test.com"},
    "payment_methods": {
      "excluded_payment_types": [
        {"id": "credit_card"},
        {"id": "debit_card"},
        {"id": "ticket"},
        {"id": "digital_currency"},
        {"id": "digital_wallet"},
      ]
    },
    "items": [
      {
        "title": "Test",
        "quantity": 1,
        "currency_id": "BRL",
        "unit_price": 5,
      }
    ]
  };

  var result = await mp.createPreference(preference);
  print(result);
  var uri = Uri.parse(result["response"]["init_point"]);
  launchUrl(uri);
}