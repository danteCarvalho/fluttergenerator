import 'dart:convert';

import 'package:extended_image/extended_image.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_store.dart';
import '../../daos/hasura_dao.dart';
import '../../entidades/imagem/imagem.dart';
import '../../entidades/usuario/usuario.dart';
import '../../outros/logger.dart';
import '../../outros/metodos_estaticos.dart';
import '../../requests/server_requets.dart';
import 'minhas_informacoes_page.dart';

part 'minhas_informacoes_store.g.dart';

class MinhasInformacoesStore = MinhasInformacoesStoreBase with _$MinhasInformacoesStore;

abstract class MinhasInformacoesStoreBase with Store {
  AppStore app = Modular.get();
  @observable
  Usuario usuario = Usuario();
  @observable
  Imagem imagem = Imagem();

  init(MinhasInformacoesPageState state) async {
    usuario = await selectByIdHasura(app.usuario!.id!, Usuario());
    if (usuario.imagem != null) {
      imagem = usuario.imagem!;
    }
  }

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
        salvarImagem();
      }
    } on Exception catch (e, s) {
      myLog(e, s);
    } catch (e, s) {
      myLog(e, s);
    } finally {
      app.esperar = false;
    }
  }

  salvarImagem() async {
    try {
      app.startWait();
      Map map = {"imagem": imagem};
      var responseBody = await serverJwtPost(map, "editImagem");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("imagem")) {
          clearMemoryImageCache(imagem.id);
          if (!kIsWeb) {
            await clearDiskCachedImage(getImageLink(imagem));
          }
          app.mostrarSnackBar("Imagem salva");
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

  salvar() async {
    try {
      app.startWait();
      Map map = {"usuario": usuario};
      var responseBody = await serverJwtPost(map, "editUsuario");
      if (responseBody.isNotEmpty) {
        Map responseMap = json.decode(responseBody);
        if (responseMap.containsKey("usuario")) {
          usuario = Usuario.fromJson(responseMap["usuario"]);
          app.usuario = usuario;
          var shared = await SharedPreferences.getInstance();
          shared.setString("usuario", usuario.classToString());
          app.mostrarSnackBar("Dados salvos");
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
