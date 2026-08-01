import 'package:flutter/material.dart';
import 'package:flutterutils/flutterutils.dart';
import 'package:provider/provider.dart';

import '../../app_routes.dart';
import 'login_store.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  late LoginStore store;

  @override
  void initState() {
    super.initState();
    store = context.read<LoginStore>();
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
      child: const Text(
        "Entrar",
      ),
    );

    var ainda = GestureDetector(
      child: const Text(
        "Ainda não sou cadastrado",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: () {
        router.go("/cadastro");
      },
    );
    var esqueciSenha = GestureDetector(
      child: const Text(
        "Esqueci a senha",
        style: TextStyle(decoration: TextDecoration.underline),
      ),
      onTap: () {
        router.go("/esqueciSenha");
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
