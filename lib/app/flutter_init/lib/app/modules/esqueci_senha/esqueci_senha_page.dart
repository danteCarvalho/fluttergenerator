import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutterutils/flutterutils.dart';

import 'esqueci_senha_store.dart';

class EsqueciSenhaPage extends StatefulWidget {
  final String title;

  const EsqueciSenhaPage({super.key, this.title = 'EsqueciSenha'});

  @override
  EsqueciSenhaPageState createState() => EsqueciSenhaPageState();
}

class EsqueciSenhaPageState extends State<EsqueciSenhaPage> {
  final EsqueciSenhaStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init(this);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> columnWidgets = [];
    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
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

    var email = MyTextFormField("Email", () => store.email, (v) => store.email = v);

    var botao = ElevatedButton(
      onPressed: () => store.enviar(),
      style: ElevatedButton.styleFrom(),
      child: const Text(
        "Enviar",
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

    columnWidgets.add(sessao(const Text(("Didite o seu email"))));
    columnWidgets.add(sessao(const Text(("Enviaremos um link para redefinir a sua senha"))));
    columnWidgets.add(sessao(email,width: responsiveSize(context,mobile: col_12(context),desktop3: col_6(context))));
    columnWidgets.add(sessao(botao));

    return Scaffold(
      body: SingleChildScrollView(child: column),
    );
  }
}
