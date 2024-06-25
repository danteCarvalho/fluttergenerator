// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroStore on CadastroStoreBase, Store {
  late final _$repetirAtom =
      Atom(name: 'CadastroStoreBase.repetir', context: context);

  @override
  String get repetir {
    _$repetirAtom.reportRead();
    return super.repetir;
  }

  @override
  set repetir(String value) {
    _$repetirAtom.reportWrite(value, super.repetir, () {
      super.repetir = value;
    });
  }

  late final _$aceitoAtom =
      Atom(name: 'CadastroStoreBase.aceito', context: context);

  @override
  bool get aceito {
    _$aceitoAtom.reportRead();
    return super.aceito;
  }

  @override
  set aceito(bool value) {
    _$aceitoAtom.reportWrite(value, super.aceito, () {
      super.aceito = value;
    });
  }

  @override
  String toString() {
    return '''
repetir: ${repetir},
aceito: ${aceito}
    ''';
  }
}
