

import 'google_login.dart';
import 'login.dart';
import 'pagamento_sistema/add_pagamento_sistema.dart';
import 'pagamento_sistema/finalizar_pagamento_sistema.dart';
import 'teste.dart';
import 'verifica_atualiza_jwt.dart';

class Links {
  static Map posts = {
    "/login": login,
    "/googleLogin": googleLogin,
    "/verificaAtualizaJwt": verificaAtualizaJwt,
    "/addPagamentoSistema": addPagamentoSistema,
    "/finalizarPagamentoSistema": finalizarPagamentoSistema,
  };
  static Map gets = {"/teste": teste};

  static List excecoes = ["/login", "/googleLogin","/verificaAtualizaJwt"];
}
