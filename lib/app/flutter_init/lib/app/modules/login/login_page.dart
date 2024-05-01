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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnWidgets,
    );
    var login = MyTextFormField("Login", () => store.login, (v) => store.login = v);
    var senha = MyTextFormField("Senha", () => store.senha, (v) => store.senha = v,obscure: true,);
    var botao = ElevatedButton(onPressed: ()=>store.enviar(), child: const Text("Enviar"),);
    columnWidgets.add(login);
    columnWidgets.add(senha);
    columnWidgets.add(botao);


    return Scaffold(
      body: SingleChildScrollView(
          child: Card(
            child: column,
          )),
    );
  }
}
