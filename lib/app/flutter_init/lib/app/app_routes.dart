import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_history_observer/navigation_history_observer.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'app_store.dart';
import 'modules/cadastro/cadastro_page.dart';
import 'modules/cadastro/cadastro_store.dart';
import 'modules/esqueci_senha/esqueci_senha_page.dart';
import 'modules/esqueci_senha/esqueci_senha_store.dart';
import 'modules/esqueci_senha2/esqueci_senha2_page.dart';
import 'modules/esqueci_senha2/esqueci_senha2_store.dart';
import 'modules/google_login/google_login_page.dart';
import 'modules/google_login/google_login_store.dart';
import 'modules/home/home_page.dart';
import 'modules/home/home_store.dart';
import 'modules/lista_mensalidades/lista_mensalidades_page.dart';
import 'modules/lista_mensalidades/lista_mensalidades_store.dart';
import 'modules/logado/logado_page.dart';
import 'modules/logado/logado_store.dart';
import 'modules/login/login_page.dart';
import 'modules/login/login_store.dart';
import 'modules/minhas_informacoes/minhas_informacoes_page.dart';
import 'modules/minhas_informacoes/minhas_informacoes_store.dart';
import 'modules/root/root_page.dart';
import 'modules/root/root_store.dart';
import 'modules/verifica_email/verifica_email_page.dart';
import 'modules/verifica_email/verifica_email_store.dart';
import 'modules/verifica_email2/verifica_email2_page.dart';
import 'modules/verifica_email2/verifica_email2_store.dart';
import 'widgets/root_app_bar_widget.dart';
import 'widgets/splash/splash_widget.dart';
import 'widgets/wait/wait_widget.dart';

final router = GoRouter(
  initialLocation: '/',
  observers: [
    SentryNavigatorObserver(),
    NavigationHistoryObserver(),
  ],
  routes: [
    ShellRoute(
      builder: (context, state, child) {
        final store = context.read<AppStore>();
        var scaffold = Scaffold(
          key: store.scaffoldKey,
          appBar: const RootAppBarWidget(),
          body: Stack(
            alignment: Alignment.center,
            children: [
              child,
              const WaitWidget(),
            ],
          ),
        );
        Observer observer = Observer(builder: (context) => store.iniciado ? scaffold : const SplashWidget());
        return observer;
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => Provider(
            create: (context) => RootStore(),
            child: const RootPage(),
          ),
        ),
        GoRoute(
          path: '/home',
          builder: (context, state) => Provider(
            create: (context) => HomeStore(),
            child: const HomePage(),
          ),
        ),
        GoRoute(
          path: '/login',
          builder: (context, state) => Provider(
            create: (context) => LoginStore(),
            child: const LoginPage(),
          ),
        ),
        GoRoute(
          path: '/googleLogin',
          builder: (context, state) => Provider(
            create: (context) => GoogleLoginStore(),
            child: const GoogleLoginPage(),
          ),
        ),
        GoRoute(
          path: '/mensalidades',
          builder: (context, state) => Provider(
            create: (context) => ListaMensalidadesStore(),
            child: const ListaMensalidadesPage(),
          ),
        ),
        GoRoute(
          path: '/cadastro',
          builder: (context, state) => Provider(
            create: (context) => CadastroStore(),
            child: const CadastroPage(),
          ),
        ),
        GoRoute(
          path: '/verificaEmail',
          builder: (context, state) => Provider(
            create: (context) => VerificaEmailStore(),
            child: const VerificaEmailPage(),
          ),
        ),
        GoRoute(
          path: '/verificaEmail2',
          builder: (context, state) {
            final id = state.uri.queryParameters['id'];
            return Provider(
              create: (context) => VerificaEmail2Store(),
              child: VerificaEmail2Page(id: id),
            );
          },
        ),
        GoRoute(
          path: '/esqueciSenha',
          builder: (context, state) => Provider(
            create: (context) => EsqueciSenhaStore(),
            child: const EsqueciSenhaPage(),
          ),
        ),
        GoRoute(
          path: '/esqueciSenha2',
          builder: (context, state) {
            final id = state.uri.queryParameters['id'];
            return Provider(
              create: (context) => EsqueciSenha2Store(),
              child: EsqueciSenha2Page(id: id),
            );
          },
        ),
        GoRoute(
          path: '/logado',
          builder: (context, state) => Provider(
            create: (context) => LogadoStore(),
            child: const LogadoPage(),
          ),
          redirect: (context, state) {
            final appStore = context.read<AppStore>();
            final usuario = appStore.usuario;
            if (usuario == null) {
              return '/home';
            } else if (usuario.emailVerificado == false) {
              return '/verificaEmail';
            }
            return null;
          },
          routes: [
            GoRoute(
              path: 'minhasInformacoes',
              builder: (context, state) => Provider(
                create: (context) => MinhasInformacoesStore(),
                child: const MinhasInformacoesPage(),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);
