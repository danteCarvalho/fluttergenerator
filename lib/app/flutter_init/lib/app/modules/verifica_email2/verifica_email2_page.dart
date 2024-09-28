import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:flutterutils/flutterutils.dart';

import 'verifica_email2_store.dart';

class VerificaEmail2Page extends StatefulWidget {
  final String title;

  const VerificaEmail2Page({super.key, this.title = 'VerificaEmail2'});

  @override
  VerificaEmail2PageState createState() => VerificaEmail2PageState();
}

class VerificaEmail2PageState extends State<VerificaEmail2Page> {
  final VerificaEmail2Store store = Modular.get();

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

    sessao(Widget widget, {double? width, double? height, Alignment? alignment = Alignment.center, double paddingV = 2, double paddingH = 2}) {
      return Container(
        width: width,
        height: height,
        padding: EdgeInsets.symmetric(vertical: porcentagemMenorLado(context, paddingV), horizontal: porcentagemMenorLado(context, paddingH)),
        alignment: alignment,
        child: widget,
      );
    }


    var observer = Observer(
      builder: (BuildContext context) {
        if (store.verificado) {
          List<Widget> columnWidgets = [];
          var column = Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: columnWidgets,
          );
          columnWidgets.add(Text(
            "Email verificado",
            style: TextStyle(fontSize: porcentagemMenorLado(context, 4)),
          ));
          columnWidgets.add(Icon(
            FontAwesome.check_circle,
            color: Colors.green,
            size: porcentagemMenorLado(context, 10),
          ));
          return column;
        } else {
          return Text("Verificando email...", style: TextStyle(fontSize: porcentagemMenorLado(context, 4)));
        }
      },
    );
    columnWidgets.add(sessao(observer));

    return Scaffold(
      body: SingleChildScrollView(child: column),
    );
  }
}
