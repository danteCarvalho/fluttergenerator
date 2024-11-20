import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';
import 'package:mercadopago_sdk/mercadopago_sdk.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../app_store.dart';

class PagamentoSistemaUtil {
  static MP getMp() {
    // var mp = MP.fromAccessToken("TEST-2997362044584823-052123-be4b79be6d99b0204f4c78faba69711f-154167075");
    var mp = MP.fromAccessToken("APP_USR-2997362044584823-052123-680e3917e24fbd12374bba9c357088ef-154167075");
    return mp;
  }

  static buscarPagamento(String id) async {
    var mp = getMp();
    var result = await mp.getPayment(id);
    return result;
  }

  static buscarPreferencia(String id) async {
    var mp = getMp();
    var result = await mp.getPreference(id);
    return result;
  }

  static criarPagamento(double valor) async {
    var mp = getMp();
    var pagamento = {
      "transaction_amount": valor,
      "description": "Mensalidade",
      "payment_method_id": "pix",
      "payer": {
        "email": "test@test.com",
      }
    };

    var result = await mp.post("/v1/payments", data: pagamento);
    return result;
  }

  static mostarQrcode(String qrcodeString, double valor) async{
    AppStore app = Modular.get();


    var qrcode = LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var texto = SizedBox(
          width: porcentagemMenorLado(context, 70),
          child: Text(qrcodeString),
        );
        var copiar = ElevatedButton(
          child: const Text("Pix copia e cola"),
          onPressed: () {
            FlutterClipboard.copy(qrcodeString);
            app.mostrarSnackBar("Texto copiado");
          },
        );
        var qrImage = QrImageView(data: qrcodeString,);
        var qrcode = Dialog(
          child: qrImage,
        );
        var valorText = Text("Valor: $valor R\$");
        List<Widget> columnWidgets = [];
        var column = Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: columnWidgets,
        );
        columnWidgets.add(valorText);
        columnWidgets.add(Expanded(child: qrcode));
        columnWidgets.add(copiar);
        columnWidgets.add(texto);
        return column;
      },
    );

    Dialog dialog = Dialog(
      child: qrcode,
    );
    await app.dialog(dialog);
  }

  static criarPreferencia(double valor) async {
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
          "title": "Mensalidade",
          "quantity": 1,
          "currency_id": "BRL",
          "unit_price": valor,
        }
      ]
    };

    var result = await mp.createPreference(preference);
    var uri = Uri.parse(result["response"]["init_point"]);
    launchUrl(uri);
  }
}
