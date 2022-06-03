  
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import '../outros/metodos_estaticos.dart';

import '../app_store.dart';


class RootAppBarWidget extends StatefulWidget implements PreferredSizeWidget{
  const RootAppBarWidget({Key? key}) : super(key: key);

  @override
  RootAppBarWidgetState createState() => RootAppBarWidgetState();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
class RootAppBarWidgetState extends State<RootAppBarWidget> {
  AppStore app = Modular.get();
  var historyObserver = NavigationHistoryObserver();

  @override
  void initState() {
    super.initState();
    historyObserver.historyChangeStream.listen((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {

    Observer observer = Observer(
      builder: (context) {
        var usuario = app.usuario;
        if (usuario == null) {
          return TextButton(
              onPressed: () async {
                if (kIsWeb) {
                  googleLoginWeb();
                } else {
                  googleLoginOs();
                }
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ));
        }
        return PopupMenuButton(
          icon: const Icon(
            Icons.person,
          ),
          onSelected: (dynamic value) {
            value?.call();
          },
          itemBuilder: (BuildContext context) {
            List<PopupMenuItem> list = [];
            list.add(PopupMenuItem(
              child: const Text("Mensalidades"),
              value: (){
                Modular.to.popUntil((p0) => false);
                Modular.to.pushReplacementNamed("/mensalidades/");
              },
            ));
            list.add(PopupMenuItem(
              child: Text(usuario.nome!),
            ));
            list.add(PopupMenuItem(
              value: app.sair,
              child: const Text("Sair"),
            ));

            return list;
          },
        );
      },
    );


    List<Widget> list = [];
    for (Route route in historyObserver.history) {
      String nome = route.settings.name!;
      if(nome.contains("?")){
        nome = nome.split("?")[0];
      }
      list.add(Text(nome));
    }

    return AppBar(
      title: Row(children: list,),
      actions: [observer],);
  }
}
  
  