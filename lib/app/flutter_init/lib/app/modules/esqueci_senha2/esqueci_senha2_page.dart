import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutterutils/flutterutils.dart';

import 'esqueci_senha2_store.dart';

class EsqueciSenha2Page extends StatefulWidget {

  const EsqueciSenha2Page({super.key});

  @override
  EsqueciSenha2PageState createState() => EsqueciSenha2PageState();
}

class EsqueciSenha2PageState extends State<EsqueciSenha2Page> {
  final EsqueciSenha2Store store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init(this);
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    sessao(Widget widget, {double? width, double? height, Alignment? alignment = Alignment.center, double paddingV = 2, double paddingH = 2, bool center = false}) {
      Widget retorno = Container(
        width: responsiveSize(context, mobile: col_12(context), desktop3: col_6(context)),
        height: height,
        padding: EdgeInsets.symmetric(vertical: porcentagemMenorLado(context, paddingV), horizontal: porcentagemMenorLado(context, paddingH)),
        alignment: alignment,
        child: widget,
      );
      return center ? Container(alignment: Alignment.center, child: retorno) : retorno;
    }

    var observer = Observer(
      builder: (BuildContext context) {
        List<Widget> columnWidgets = [];
        var column = Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: columnWidgets,
        );
        if (store.alterada) {
          var text = Text("Senha alterada", style: TextStyle(fontSize: porcentagemMenorLado(context, 4)));
          var icon = Icon(FontAwesome.check_circle, color: Colors.green, size: porcentagemMenorLado(context, 10));
          columnWidgets.add(sessao(text));
          columnWidgets.add(sessao(icon));
          return column;
        } else {
          List<Function> senhaValidations = [];
          senhaValidations.add((String? v) => defaultValidator(v));
          senhaValidations.add((String? v) => sizeValidator(v, 8));
          senhaValidations.add((String? v) => upperCaseValidator(v));
          senhaValidations.add((String? v) => spetialCharacterValidator(v));
          senhaValidations.add((String? v) => numberValidator(v));
          var senha = MyTextFormField(
            "Senha",
            () => store.senha,
            (v) => store.senha = v,
            obscure: true,
            validator: (v) => processValidations(v, senhaValidations),
          );


          var repita = MyTextFormField(
            "Repita a senha",
            () => store.senha2,
            (v) => store.senha2 = v,
            obscure: true,
            validator: (v) => defaultValidator(v) ?? differentValidator(v, store.senha, "Senhas diferentes"),
          );

          var enviar = ElevatedButton(
            onPressed: () async {
              if (!formKey.currentState!.validate()) {
                return;
              }
              store.enviar();
            },
            style: ElevatedButton.styleFrom(),
            child: const Text(
              "Enviar",
              style: TextStyle(),
            ),
          );

          columnWidgets.add(sessao(senha));
          columnWidgets.add(sessao(repita));
          columnWidgets.add(sessao(enviar));

          var form = Form(
            key: formKey,
            child: column,
          );
          return form;
        }
      },
    );

    return store.app.popScope(Scaffold(
      body: SingleChildScrollView(
          child: sessao(observer, center: true)),
    ), context);

  }
}
