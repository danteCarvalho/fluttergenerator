import 'google_login.dart';
import 'login.dart';
import 'teste.dart';
import 'verifica_atualiza_jwt.dart';

class Links {
  static Map posts = {
    "/login": login,
    "/googleLogin": googleLogin,
    "/verificaAtualizaJwt": verificaAtualizaJwt,
  };
  static Map gets = {"/teste": teste};

  static List excecoes = ["/login", "/googleLogin","/verificaAtualizaJwt"];
}
