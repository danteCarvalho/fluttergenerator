import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutterutils/flutterutils.dart';

import 'verifica_email_store.dart';

class VerificaEmailPage extends StatefulWidget {
  final String title;

  const VerificaEmailPage({super.key, this.title = 'VerificaEmail'});

  @override
  VerificaEmailPageState createState() => VerificaEmailPageState();
}

class VerificaEmailPageState extends State<VerificaEmailPage> {
  final VerificaEmailStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init(this);
  }

  @override
  void dispose() {
    store.timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> columnWidgets = [];
    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnWidgets,
    );

    sessao(Widget widget, {double? width, double? height, Alignment? alignment = Alignment.center, double paddingV = 2, double paddingH = 2}) {
      return Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(vertical: porcentagemMenorLado(context, paddingV), horizontal: porcentagemMenorLado(context, paddingH)),
        alignment: alignment,
        child: widget,
      );
    }

    List<Widget> wrapWidgets = [];
    var wrap = Wrap(
      children: wrapWidgets,
    );
    var botao = ElevatedButton(
      onPressed: () => store.enviar(),
      style: ElevatedButton.styleFrom(),
      child: const Text(
        "Enviar email",
        style: TextStyle(),
      ),
    );

    var sair = ElevatedButton(
      onPressed: () => store.app.sair(),
      style: ElevatedButton.styleFrom(),
      child: const Text(
        "Sair",
        style: TextStyle(),
      ),
    );
    columnWidgets.add(sessao(const Text(("Para continuar você deve verificar a sua conta"))));
    columnWidgets.add(sessao(Text(("Enviaremos um email para ${store.app.usuario?.email}"))));
    columnWidgets.add(sessao(botao));
    columnWidgets.add(sessao(const Text(("ou"))));
    columnWidgets.add(sessao(sair));

    return Scaffold(
      body: SingleChildScrollView(child: column),
    );
  }
}
