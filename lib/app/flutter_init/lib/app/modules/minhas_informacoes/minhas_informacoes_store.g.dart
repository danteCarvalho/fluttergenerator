// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'minhas_informacoes_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MinhasInformacoesStore on MinhasInformacoesStoreBase, Store {
  late final _$usuarioAtom =
      Atom(name: 'MinhasInformacoesStoreBase.usuario', context: context);

  @override
  Usuario get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(Usuario value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$imagemAtom =
      Atom(name: 'MinhasInformacoesStoreBase.imagem', context: context);

  @override
  Imagem get imagem {
    _$imagemAtom.reportRead();
    return super.imagem;
  }

  @override
  set imagem(Imagem value) {
    _$imagemAtom.reportWrite(value, super.imagem, () {
      super.imagem = value;
    });
  }

  @override
  String toString() {
    return '''
usuario: ${usuario},
imagem: ${imagem}
    ''';
  }
}
