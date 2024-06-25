import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../../app_store.dart';
import '../../entidades/imagem/imagem.dart';
import '../../entidades/usuario/usuario.dart';
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
    FilePickerResult? result = await FilePicker.platform
        .pickFiles(allowMultiple: false, type: FileType.image);
    if (result != null && result.files.isNotEmpty) {
      var single = result.files.single;
      var bytes = await single.xFile.readAsBytes();
      imagem.value = base64Encode(bytes);
      imagem.extension = single.extension!;
      imagem.name = single.name;
      imagem.size = single.size;
    }
  }

  cadastrar() async {
    if(imagem.value.isEmpty){
      app.mostrarSnackBar("Escolha uma imagem");
      return;
    }
    Map map = {
      "usuario":usuario,
      "imagem":imagem
    };
    var responseBody = await serverPost(map, "api/addUsuario");
    if (responseBody.isNotEmpty) {
      Map responseMap = json.decode(responseBody);
      if (responseMap.containsKey("usuario")) {
        app.mostrarSnackBar("Cadastrado com sucesso");
        Modular.to.popUntil((p0) => false);
        Modular.to.pushReplacementNamed("/home/");
      } else if (responseMap.containsKey("mensagem")) {
        app.mostrarSnackBar(responseMap["mensagem"]);
      }
    }
  }
}
