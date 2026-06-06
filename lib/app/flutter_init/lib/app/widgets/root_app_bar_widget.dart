import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:provider/provider.dart';

import '../app_routes.dart';
import '../app_store.dart';
import '../outros/estaticos_flutter.dart';

class RootAppBarWidget extends StatefulWidget implements PreferredSizeWidget {
  const RootAppBarWidget({super.key});

  @override
  RootAppBarWidgetState createState() => RootAppBarWidgetState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class RootAppBarWidgetState extends State<RootAppBarWidget> {
  late AppStore app;

  @override
  void initState() {
    super.initState();
    app = context.read<AppStore>();
  }

  @override
  Widget build(BuildContext context) {
    Observer menu = Observer(
      builder: (context) {
        var usuario = app.usuario;
        List<PopupMenuItem> list = [];

        if (usuario == null) {
          list.add(
            PopupMenuItem(
              child: const Text("Início"),
              value: () {
                router.go("/home");
              },
            ),
          );
          list.add(
            PopupMenuItem(
              child: const Text("Login"),
              value: () {
                router.go("/login");
              },
            ),
          );
          list.add(PopupMenuItem(value: () => googleLogin(app), child: const Text("Google Login")));
          list.add(
            PopupMenuItem(
              child: const Text("Cadastro"),
              value: () {
                router.go("/cadastro");
              },
            ),
          );
        } else {
          list.add(PopupMenuItem(child: Text(usuario.nome)));
          list.add(
            PopupMenuItem(
              child: const Text("Início"),
              value: () {
                router.go("/logado");
              },
            ),
          );
          list.add(
            PopupMenuItem(
              child: const Text("Minhas informações"),
              value: () {
                router.go("/logado/minhasInformacoes");
              },
            ),
          );
          if (usuario.admin == true) {
            list.add(
              PopupMenuItem(
                child: const Text("Mensalidades"),
                value: () {
                  router.go("/mensalidades");
                },
              ),
            );
          }
          list.add(PopupMenuItem(value: app.sair, child: const Text("Sair")));
        }
        return PopupMenuButton(
          icon: const Icon(Icons.more_vert),
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

    var streamBuilder = StreamBuilder(
      stream: NavigationHistoryObserver().historyChangeStream,
      builder: (context, snapshot) {
        print("Histórico: ${NavigationHistoryObserver().history.map((e) => e.settings.name).toList()}");
        if (NavigationHistoryObserver().history.length > 1) {
          return IconButton(
            onPressed: () {
              if (router.canPop()) {
                router.pop();
              }
            },
            onLongPress: () {
              List<PopupMenuItem> listaHistorico = [];
              for (Route route in NavigationHistoryObserver().history) {
                var nome = route.settings.name;
                if (nome == null) {
                  continue;
                }
                listaHistorico.add(PopupMenuItem(
                  value: nome,
                  child: Text(nome),
                ));
              }
              app.menu(context, listaHistorico);
            },
            icon: const Icon(Icons.arrow_back),
          );
        } else {
          return Container();
        }
      },
    );
    return AppBar(leading: streamBuilder, backgroundColor: Colors.lightBlueAccent, actions: [menu]);
  }
}
