// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_view.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MapView on _MapViewBase, Store {
  late final _$zoomAtom = Atom(name: '_MapViewBase.zoom', context: context);

  @override
  double get zoom {
    _$zoomAtom.reportRead();
    return super.zoom;
  }

  @override
  set zoom(double value) {
    _$zoomAtom.reportWrite(value, super.zoom, () {
      super.zoom = value;
    });
  }

  late final _$centerAtom = Atom(name: '_MapViewBase.center', context: context);

  @override
  LatLng get center {
    _$centerAtom.reportRead();
    return super.center;
  }

  @override
  set center(LatLng value) {
    _$centerAtom.reportWrite(value, super.center, () {
      super.center = value;
    });
  }

  @override
  String toString() {
    return '''
zoom: ${zoom},
center: ${center}
    ''';
  }
}
