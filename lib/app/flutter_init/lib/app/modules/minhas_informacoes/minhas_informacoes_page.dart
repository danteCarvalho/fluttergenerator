import 'dart:convert';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';

import '../../outros/metodos_estaticos.dart';
import 'minhas_informacoes_store.dart';

class MinhasInformacoesPage extends StatefulWidget {
  final String title;

  const MinhasInformacoesPage({super.key, this.title = 'MinhasInformacoes'});

  @override
  MinhasInformacoesPageState createState() => MinhasInformacoesPageState();
}

class MinhasInformacoesPageState extends State<MinhasInformacoesPage> {
  final MinhasInformacoesStore store = Modular.get();

  @override
  void initState() {
    super.initState();
    store.init(this);
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> columnWidgets = [];
    var column = Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: columnWidgets,
    );

    sessao(Widget widget, {double? width, double? height}) {
      return Container(
        width: width ?? responsiveSize(context, mobile: col_12(context), desktop3: col_6(context)),
        height: height,
        padding: const EdgeInsets.all(10),
        alignment: Alignment.center,
        child: widget,
      );
    }

    List<Widget> wrapWidgets = [];
    var wrap = Wrap(
      children: wrapWidgets,
    );

    var imagem = Observer(
      builder: (BuildContext context) {
        var imagem = store.imagem;
        Widget widget;
        if (imagem.value.isNotEmpty) {
          var base64decode = base64Decode(imagem.value);
          var extendedImage = ExtendedImage.memory(
            base64decode,
            fit: BoxFit.cover,
            width: porcentagemMenorLado(context, 20),
            height: porcentagemMenorLado(context, 20),
          );
          widget = GestureDetector(
            child: extendedImage,
            onTap: () {
              store.selectFoto();
            },
          );
        } else if (imagem.id == null) {
          widget = SizedBox(
            width: porcentagemMenorLado(context, 20),
            height: porcentagemMenorLado(context, 20),
            child: FloatingActionButton(
              backgroundColor: Colors.grey,
              onPressed: () {
                store.selectFoto();
              },
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Icon(
                    Icons.person,
                    size: porcentagemMenorLado(context, 20),
                  ),
                  Icon(
                    Icons.camera_alt,
                    size: porcentagemMenorLado(context, 7),
                    color: Colors.white,
                  )
                ],
              ),
            ),
          );
        } else {
          widget = GestureDetector(
            child: ExtendedImage.network(
                getImageLink(imagem),
              fit: BoxFit.cover,
              width: porcentagemMenorLado(context, 20),
              height: porcentagemMenorLado(context, 20),
              imageCacheName: imagem.id,
              onDoubleTap: (state) => store.selectFoto(),
            ),
            onTap: () {
              store.selectFoto();
            },
            onLongPress: () => store.selectFoto(),
          );
        }
        return ClipOval(
          child: widget,
        );
      },
    );

    var estado = MyTextFormField("Estado", () => store.usuario.estado, (v) => store.usuario.estado = v);
    var cidade = MyTextFormField("Cidade", () => store.usuario.cidade, (v) => store.usuario.cidade = v);
    var whatsapp = MyTextFormField("WhatsApp", () => store.usuario.telefone, (v) => store.usuario.telefone = v);
    var email = MyTextFormField("Email para contado", () => store.usuario.email, (v) => store.usuario.email = v);
    var username = MyTextFormField("Nome de usuario", () => store.usuario.username, (v) => store.usuario.username = v);







    var salvar = ElevatedButton(
      onPressed: () => store.salvar(),
      child: const Text("Salvar"),
    );

    wrapWidgets.add(sessao(estado));
    wrapWidgets.add(sessao(cidade));
    wrapWidgets.add(sessao(whatsapp));
    wrapWidgets.add(sessao(email));

    columnWidgets.add(sessao(const Text("Foto do perfil"), width: col_12(context)));
    columnWidgets.add(sessao(imagem, width: col_12(context)));
    columnWidgets.add(wrap);
    columnWidgets.add(sessao(username));
    columnWidgets.add(sessao(salvar, width: col_12(context)));

    return Scaffold(
      body: SingleChildScrollView(child: column),
    );
  }
}
