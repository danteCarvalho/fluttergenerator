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
        List<PopupMenuItem> list = [];

        if (usuario == null) {
          list.add(PopupMenuItem(
            child: const Text("Início"),
            value: () {
              Modular.to.popUntil((p0) => false);
              Modular.to.pushReplacementNamed("/home/");
            },
          ));
          list.add(PopupMenuItem(
            child: const Text("Login"),
            value: () {
              Modular.to.pushNamed("/login/");
            },
          ));
          list.add(const PopupMenuItem(
            value: googleLogin,
            child: Text("Google Login"),
          ));
          list.add(PopupMenuItem(
            child: const Text("Cadastro"),
            value: () {
              Modular.to.popUntil((p0) => false);
              Modular.to.pushReplacementNamed("/cadastro/");
            },
          ));
        } else {
          list.add(PopupMenuItem(
            child: Text(usuario.nome),
          ));
          list.add(PopupMenuItem(
            child: const Text("Início"),
            value: () {
              Modular.to.popUntil((p0) => false);
              Modular.to.pushReplacementNamed("/logado/");
            },
          ));
          list.add(PopupMenuItem(
            child: const Text("Minhas informações"),
            value: () {
              Modular.to.pushNamed("minhasInformacoes/");
            },
          ));
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
            value: app.sair,
            child: const Text("Sair"),
          ));
        }
        return PopupMenuButton(
          icon: const Icon(
            Icons.more_vert,
          ),
          onSelected: (dynamic value) {
            app.contexts.remove(context);
            value?.call();
          },
          itemBuilder: (BuildContext context) {
            return list;
          },
          onOpened: () {
            app.contexts.add(context);
          },
          onCanceled: () {
            app.contexts.remove(context);
          },
        );
      },
    );

    List<PopupMenuItem> listaHistorico = [];
    for (Route route in historyObserver.history) {
      if (route.settings.name == null) {
        continue;
      }
      String nome = route.settings.name!;
      if (nome.contains("?")) {
        nome = nome.split("?")[0];
      }
      listaHistorico.add(PopupMenuItem(
        value: nome,
        child: Text(nome),
      ));
    }

    Widget? voltar;
    if (listaHistorico.length > 1) {
      voltar = LayoutBuilder(
        builder: (context, constraints) {
          var gestureDetector = GestureDetector(
            child: IconButton(onPressed: () => Modular.to.pop(), icon: const Icon(Icons.arrow_back)),
            onLongPress: () => app.menu(context, listaHistorico),
          );
          return gestureDetector;
        },
      );
    }

    // var home = IconButton(
    //   onPressed: () {
    //     if (app.usuario == null) {
    //       Modular.to.popUntil((p0) => false);
    //       Modular.to.pushReplacementNamed("/home/");
    //     } else {
    //       Modular.to.popUntil((p0) => false);
    //       Modular.to.pushReplacementNamed("/logado/");
    //     }
    //   },
    //   icon: Image.asset(
    //     "assets/icone.png",
    //   ),
    // );

    return AppBar(
      leading: voltar,
      backgroundColor: Colors.lightBlueAccent,
      actions: [menu],
    );
  }
}
