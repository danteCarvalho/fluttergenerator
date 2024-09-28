// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AppStore on AppStoreBase, Store {
  late final _$iniciadoAtom =
      Atom(name: 'AppStoreBase.iniciado', context: context);

  @override
  bool get iniciado {
    _$iniciadoAtom.reportRead();
    return super.iniciado;
  }

  @override
  set iniciado(bool value) {
    _$iniciadoAtom.reportWrite(value, super.iniciado, () {
      super.iniciado = value;
    });
  }

  late final _$usuarioAtom =
      Atom(name: 'AppStoreBase.usuario', context: context);

  @override
  Usuario? get usuario {
    _$usuarioAtom.reportRead();
    return super.usuario;
  }

  @override
  set usuario(Usuario? value) {
    _$usuarioAtom.reportWrite(value, super.usuario, () {
      super.usuario = value;
    });
  }

  late final _$esperarAtom =
      Atom(name: 'AppStoreBase.esperar', context: context);

  @override
  bool get esperar {
    _$esperarAtom.reportRead();
    return super.esperar;
  }

  @override
  set esperar(bool value) {
    _$esperarAtom.reportWrite(value, super.esperar, () {
      super.esperar = value;
    });
  }

  late final _$bloquearAtom =
      Atom(name: 'AppStoreBase.bloquear', context: context);

  @override
  bool get bloquear {
    _$bloquearAtom.reportRead();
    return super.bloquear;
  }

  @override
  set bloquear(bool value) {
    _$bloquearAtom.reportWrite(value, super.bloquear, () {
      super.bloquear = value;
    });
  }

  @override
  String toString() {
    return '''
iniciado: ${iniciado},
usuario: ${usuario},
esperar: ${esperar},
bloquear: ${bloquear}
    ''';
  }
}
