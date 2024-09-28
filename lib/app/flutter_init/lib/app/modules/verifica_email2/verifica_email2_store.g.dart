// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verifica_email2_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VerificaEmail2Store on VerificaEmail2StoreBase, Store {
  late final _$verificadoAtom =
      Atom(name: 'VerificaEmail2StoreBase.verificado', context: context);

  @override
  bool get verificado {
    _$verificadoAtom.reportRead();
    return super.verificado;
  }

  @override
  set verificado(bool value) {
    _$verificadoAtom.reportWrite(value, super.verificado, () {
      super.verificado = value;
    });
  }

  @override
  String toString() {
    return '''
verificado: ${verificado}
    ''';
  }
}
