// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_mensalidades_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListaMensalidadesStore on ListaMensalidadesStoreBase, Store {
  late final _$mensalidadesAtom =
      Atom(name: 'ListaMensalidadesStoreBase.mensalidades', context: context);

  @override
  List<PagamentoSistema> get mensalidades {
    _$mensalidadesAtom.reportRead();
    return super.mensalidades;
  }

  @override
  set mensalidades(List<PagamentoSistema> value) {
    _$mensalidadesAtom.reportWrite(value, super.mensalidades, () {
      super.mensalidades = value;
    });
  }

  late final _$existeAtom =
      Atom(name: 'ListaMensalidadesStoreBase.existe', context: context);

  @override
  bool get existe {
    _$existeAtom.reportRead();
    return super.existe;
  }

  @override
  set existe(bool value) {
    _$existeAtom.reportWrite(value, super.existe, () {
      super.existe = value;
    });
  }

  @override
  String toString() {
    return '''
mensalidades: ${mensalidades},
existe: ${existe}
    ''';
  }
}
