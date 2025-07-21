import 'dart:convert';

import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';

import 'cadastro_store.dart';

class CadastroPage extends StatefulWidget {

  const CadastroPage({super.key});

  @override
  CadastroPageState createState() => CadastroPageState();
}

class CadastroPageState extends State<CadastroPage> {
  final CadastroStore store = Modular.get();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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

    sessao(Widget widget, {double? width, double? height, Alignment? alignment = Alignment.center}) {
      return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(porcentagemMenorLado(context, 2)),
        alignment: alignment,
        child: widget,
      );
    }

    var imagem = Observer(
      builder: (BuildContext context) {
        var imagem = store.imagem;
        Widget widget;
        if (imagem.value.isEmpty) {
          widget = SizedBox(
            width: porcentagemMenorLado(context, 20),
            height: porcentagemMenorLado(context, 20),
            child: FloatingActionButton(
              backgroundColor: Colors.grey,
              onPressed: () async{
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
          var base64decode = base64Decode(imagem.value);
          var extendedImage = ExtendedImage.memory(
            base64decode,
            fit: BoxFit.cover,
            width: porcentagemMenorLado(context, 20),
            height: porcentagemMenorLado(context, 20),
          );
          widget = GestureDetector(
            child: extendedImage,
            onTap: () async{
              store.selectFoto();
            },
          );
        }
        return ClipOval(
          child: widget,
        );
      },
    );

    var nome = MyTextFormField(
      "Nome completo",
      () => store.usuario.nome,
      (v) => store.usuario.nome = v,
    );
    var email = MyTextFormField(
      "Email",
      () => store.usuario.email,
      (v) => store.usuario.email = v,
    );
    List<Function> senhaValidations = [];
    senhaValidations.add((String? v) => defaultValidator(v));
    senhaValidations.add((String? v) => sizeValidator(v, 8));
    senhaValidations.add((String? v) => upperCaseValidator(v));
    senhaValidations.add((String? v) => spetialCharacterValidator(v));
    senhaValidations.add((String? v) => numberValidator(v));
    var senha = MyTextFormField(
      "Senha",
      () => store.usuario.senha,
      (v) => store.usuario.senha = v,
      obscure: true,
      validator: (v) => processValidations(v, senhaValidations),
    );
    var repetir = MyTextFormField(
      "Repetir senha",
      () => store.repetir,
      (v) => store.repetir = v,
      obscure: true,
      validator: (String? v) => defaultValidator(v) ?? differentValidator(v, store.usuario.senha, "Senhas diferentes"),
    );
    var elevatedButton = ElevatedButton(
      onPressed: () async{
        if (!formKey.currentState!.validate()) {
          return;
        }
        store.cadastrar();
      },
      child: const Text("Criar conta"),
    );

    var checkbox = Observer(
      builder: (BuildContext context) {
        var checkbox = Checkbox(
          value: store.aceito,
          onChanged: (bool? value) {
            if (value != null) {
              store.aceito = value;
            }
          },
        );
        return Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [checkbox, const Text("Li e aceito os termos de uso.")],
        );
      },
    );

    columnWidgets.add(const Center(child: Text("Foto de perfil")));
    columnWidgets.add(Center(child: imagem));
    columnWidgets.add(sessao(nome));
    columnWidgets.add(sessao(email));
    columnWidgets.add(sessao(senha));
    columnWidgets.add(sessao(repetir));
    columnWidgets.add(sessao(checkbox));
    columnWidgets.add(sessao(elevatedButton));

    return store.app.popScope(Scaffold(
      body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: column,
          )),
    ), context);

  }
}
