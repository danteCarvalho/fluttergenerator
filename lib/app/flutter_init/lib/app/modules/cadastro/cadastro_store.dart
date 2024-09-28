import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_store.dart';
import '../../entidades/imagem/imagem.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/logger.dart';
import '../../requests/server_requets.dart';
import 'cadastro_page.dart';

part 'cadastro_store.g.dart';

class CadastroStore = CadastroStoreBase with _$CadastroStore;

abstract class CadastroStoreBase with Store {
  AppStore app = Modular.get();
  Usuario usuario = Usuario();
  Imagem imagem = Imagem();
  @observable
  String repetir = "";

  @observable
  bool aceito = false;

  init(CadastroPageState state) async {}


  selectFoto() async {
    try {
      app.startWait();
      FilePickerResult? result = await FilePicker.platform.pickFiles(allowMultiple: false, type: FileType.image);
      if (result != null && result.files.isNotEmpty) {
        var single = result.files.single;
        var bytes = await single.xFile.readAsBytes();
        imagem.value = base64Encode(bytes);
        imagem.extension = single.extension!;
        imagem.name = single.name;
        imagem.size = single.size;
      }
    } on Exception catch (e, s) {
      myLog(e, s);
    } catch (e, s) {
      myLog(e, s);
    } finally {
      app.esperar = false;
    }
  }

  cadastrar() async {
    try {
      app.startWait();
      if (imagem.value.isEmpty) {
        app.mostrarSnackBar("Escolha uma imagem");
        return;
      }
      Map map = {"usuario": usuario, "imagem": imagem};
      var responseBody = await serverPost(map, "api/addUsuario");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("usuario")) {
          Usuario usuario = Usuario.fromJson(responseMap["usuario"]);
          String jwt = responseMap["jwt"];
          var shared = await SharedPreferences.getInstance();
          shared.setString("jwt", jwt);
          shared.setString("usuario", usuario.classToString());
          app.usuario = usuario;
          app.mostrarSnackBar("Cadastrado com sucesso");
          Modular.to.popUntil((p0) => false);
          Modular.to.pushReplacementNamed("/logado/");
        } else if (responseMap.containsKey("mensagem")) {
          app.mostrarSnackBar(responseMap["mensagem"]);
        }
      }
    } on ClientException catch (e, s) {
      app.mostrarSnackBar("Não foi possivel conectar");
      myLog(e, s);
    } finally {
      app.esperar = false;
    }
  }
}
