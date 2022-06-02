import 'package:flutter_modular/flutter_modular.dart';

class MetodosEstaticos {
  static void uriTest() {
    Modular.to.path;
    Modular.args.uri.scheme;
    Modular.args.uri.path;
    Modular.args.uri.host;
    Modular.args.uri.query;
    Modular.args.uri.authority;
    Modular.args.uri.origin;
    Modular.args.uri.userInfo;
    Modular.args.uri.pathSegments;
    Modular.args.uri.port;
    Modular.args.uri.fragment;
    Modular.args.uri.data;
    Uri.base.scheme;
    Uri.base.path;
    Uri.base.host;
    Uri.base.query;
    Uri.base.authority;
    Uri.base.origin;
    Uri.base.userInfo;
    Uri.base.pathSegments;
    Uri.base.port;
    Uri.base.fragment;
    Uri.base.data;
  }
}
