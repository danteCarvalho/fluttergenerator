import 'dart:convert';

import 'package:dartutils/dartutils.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutterutils/flutterutils.dart';

import 'cadastro_store.dart';

class CadastroPage extends StatefulWidget {
  final String title;

  const CadastroPage({super.key, this.title = 'Cadastro'});

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
    String textoSenha = """
    - 8 caracteres incluindo pelo menos:
    - 1 maiúscula
    - 1 caractere especial
    - 1 número
    """;
    var textSenha = Text(textoSenha);
    const String pattern = r'^(?=.*[A-Z])(?=.*[!@#\$&*~])(?=.*[0-9]).{8,}$';
    final RegExp regex = RegExp(pattern);

    var senha = MyTextFormField(
      "Senha",
      () => store.usuario.senha,
      (v) => store.usuario.senha = v,
      obscure: true,
      validator: (v) => nuloOuvazio([v])
          ? "^"
          : !regex.hasMatch(v!)
              ? "Senha não segura"
              : null,
    );
    var repetir = MyTextFormField(
      "Rpetir senha",
      () => store.repetir,
      (v) => store.repetir = v,
      obscure: true,
      validator: (String? v) => nuloOuvazio([v])
          ? "^"
          : v != store.usuario.senha
              ? "Senhas diferentes"
              : null,
    );
    var elevatedButton = ElevatedButton(
      onPressed: () {
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
          children: [checkbox, const Text("Li e aceito os termos de uso etc etc")],
        );
      },
    );

    columnWidgets.add(const Center(child: Text("Foto de perfil")));
    columnWidgets.add(Center(child: imagem));
    columnWidgets.add(nome);
    columnWidgets.add(email);
    columnWidgets.add(senha);
    columnWidgets.add(textSenha);
    columnWidgets.add(repetir);
    columnWidgets.add(checkbox);
    columnWidgets.add(elevatedButton);

    return Scaffold(
      body: SingleChildScrollView(
          child: Card(
        child: Form(
          key: formKey,
          child: column,
        ),
      )),
    );
  }
}
