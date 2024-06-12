import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';

import '../app_store.dart';
import '../outros/metodos_estaticos.dart';

class RootAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const RootAppBarWidget({super.key});

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
    Observer menu = Observer(
      builder: (context) {
        var usuario = app.usuario;
        return PopupMenuButton(
          icon: const Icon(
            Icons.more_vert,
          ),
          onSelected: (dynamic value) {
            value?.call();
          },
          itemBuilder: (BuildContext context) {
            List<PopupMenuItem> list = [];

            if (usuario == null) {
              list.add(const PopupMenuItem(
                value: googleLogin,
                child: Text("Google Login"),
              ));
              list.add(PopupMenuItem(
                child: const Text("Login"),
                value: () {
                  Modular.to.popUntil((p0) => false);
                  Modular.to.pushReplacementNamed("/login/");
                },
              ));
            } else {
              if (usuario.admin == true) {
                list.add(PopupMenuItem(
                  child: const Text("Mensalidades"),
                  value: () {
                    Modular.to.popUntil((p0) => false);
                    Modular.to.pushReplacementNamed("/mensalidades/");
                  },
                ));
              }
              list.add(PopupMenuItem(
                child: Text(usuario.nome!),
              ));
              list.add(PopupMenuItem(
                value: app.sair,
                child: const Text("Sair"),
              ));
            }

            return list;
          },
        );
      },
    );

    List<DropdownMenuItem<String>> list = [];
    for (Route route in historyObserver.history.reversed) {
      String nome = route.settings.name!;
      if (nome.contains("?")) {
        nome = nome.split("?")[0];
      }
      list.add(DropdownMenuItem<String>(
        value: nome,
        child: Text(nome),
      ));
    }

    var dropdownButton = DropdownButton<String>(
      items: list,
      onChanged: (Object? value) {},
      value: list.isEmpty?null: list.first.value,
    );

    Widget? leading;
    if (historyObserver.history.length > 1) {
      leading = IconButton(onPressed: () => Modular.to.pop(), icon: const Icon(Icons.arrow_back));
    }

    return AppBar(
      title: Row(
        children: [dropdownButton],
      ),
      backgroundColor: Colors.lightBlueAccent,
      actions: [menu],
      leading: leading,
    );
  }
}
