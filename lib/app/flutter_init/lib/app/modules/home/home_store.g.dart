// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$showsAtom = Atom(name: 'HomeStoreBase.shows', context: context);

  @override
  ObservableList<Show> get shows {
    _$showsAtom.reportRead();
    return super.shows;
  }

  @override
  set shows(ObservableList<Show> value) {
    _$showsAtom.reportWrite(value, super.shows, () {
      super.shows = value;
    });
  }

  @override
  String toString() {
    return '''
shows: ${shows}
    ''';
  }
}
