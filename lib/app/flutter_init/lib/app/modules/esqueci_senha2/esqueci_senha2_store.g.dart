// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'esqueci_senha2_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$EsqueciSenha2Store on EsqueciSenha2StoreBase, Store {
  late final _$senhaAtom =
      Atom(name: 'EsqueciSenha2StoreBase.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$senha2Atom =
      Atom(name: 'EsqueciSenha2StoreBase.senha2', context: context);

  @override
  String get senha2 {
    _$senha2Atom.reportRead();
    return super.senha2;
  }

  @override
  set senha2(String value) {
    _$senha2Atom.reportWrite(value, super.senha2, () {
      super.senha2 = value;
    });
  }

  late final _$alteradaAtom =
      Atom(name: 'EsqueciSenha2StoreBase.alterada', context: context);

  @override
  bool get alterada {
    _$alteradaAtom.reportRead();
    return super.alterada;
  }

  @override
  set alterada(bool value) {
    _$alteradaAtom.reportWrite(value, super.alterada, () {
      super.alterada = value;
    });
  }

  @override
  String toString() {
    return '''
senha: ${senha},
senha2: ${senha2},
alterada: ${alterada}
    ''';
  }
}
