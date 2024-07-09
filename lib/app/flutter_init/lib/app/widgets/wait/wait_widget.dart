import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';

import '../../app_store.dart';

class WaitWidget extends StatefulWidget {
  const WaitWidget({super.key});

  @override
  WaitWidgetState createState() => WaitWidgetState();
}

class WaitWidgetState extends State<WaitWidget> {
  AppStore app = Modular.get();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var esperar = Observer(
      builder: (context) {
        if (app.esperar || app.bloquear) {
          return GestureDetector(
            onTap: () {
              if (!app.bloquear) {
                app.esperar = false;
              }
            },
            child: Container(color: Colors.transparent, alignment: Alignment.center, width: porcentagemLargura(context, 100), height: porcentagemAltura(context, 100), child: SizedBox(height: porcentagemMenorLado(context, 30), width: porcentagemMenorLado(context, 30), child: const CircularProgressIndicator())),
          );
        } else {
          return Container();
        }
      },
    );
    return esperar;
  }
}
