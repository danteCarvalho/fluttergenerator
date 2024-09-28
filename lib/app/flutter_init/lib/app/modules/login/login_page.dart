import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';

import 'login_store.dart';

class LoginPage extends StatefulWidget {
  final String title;

  const LoginPage({super.key, this.title = 'Login'});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final LoginStore store = Modular.get();

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
    sessao(Widget widget, {double? width, double? height, Alignment? alignment = Alignment.center}) {
      return Container(
        width: width ?? responsiveSize(context, tablet: col_8(context), desktop3: col_6(context)),
        height: height,
        padding: EdgeInsets.all(porcentagemMenorLado(context, 2)),
        alignment: alignment,
        child: widget,
      );
    }

    var login = MyTextFormField("Login", () => store.login, (v) => store.login = v);
    var senha = MyTextFormField(
      "Senha",
      () => store.senha,
      (v) => store.senha = v,
      obscure: true,
    );
    var botao = ElevatedButton(
      onPressed: () async => store.enviar(),
      style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
      child: const Text(
        "Entrar",
        style: TextStyle(color: Colors.white),
      ),
    );

    var esqueci = GestureDetector(
      child: const Text(
        "Esqueci a senha",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: () {},
    );
    var ainda = GestureDetector(
      child: const Text(
        "Ainda não sou cadastrado",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: () {
        Modular.to.pushNamed("/cadastro/");
      },
    );
    var esqueciSenha = GestureDetector(
      child: const Text(
        "Esqueci a senha",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: () {
        Modular.to.pushNamed("/esqueciSenha/");
      },
    );

    columnWidgets.add(sessao(login));
    columnWidgets.add(sessao(senha));
    columnWidgets.add(sessao(botao, alignment: null, width: responsiveSize(context, tablet: col_8(context), desktop3: col_3(context))));
    columnWidgets.add(sessao(ainda));
    columnWidgets.add(sessao(esqueciSenha));

    return Scaffold(
      body: SingleChildScrollView(
          child: Center(
        child: column,
      )),
    );
  }
}
