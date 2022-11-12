// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_lateral_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MenuLateralStore on MenuLateralStoreBase, Store {
  late final _$menuLinksAtom =
      Atom(name: 'MenuLateralStoreBase.menuLinks', context: context);

  @override
  List<dynamic>? get menuLinks {
    _$menuLinksAtom.reportRead();
    return super.menuLinks;
  }

  @override
  set menuLinks(List<dynamic>? value) {
    _$menuLinksAtom.reportWrite(value, super.menuLinks, () {
      super.menuLinks = value;
    });
  }

  late final _$initAsyncAction =
      AsyncAction('MenuLateralStoreBase.init', context: context);

  @override
  Future init() {
    return _$initAsyncAction.run(() => super.init());
  }

  @override
  String toString() {
    return '''
menuLinks: ${menuLinks}
    ''';
  }
}
