// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:teste/app/entidades/entidade.dart' as prefix2;
import 'package:teste/app/entidades/usuario/usuario.dart' as prefix1;
import 'package:teste/app/outros/entidade_helper.dart' as prefix0;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Usuario',
            r'.Usuario',
            7,
            0,
            const prefix0.Reflector(),
            const <int>[0],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix1.Usuario() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.GenericClassMirrorImpl(
            r'Entidade',
            r'.Entidade',
            519,
            1,
            const prefix0.Reflector(),
            const <int>[1],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {},
            -1,
            -1,
            const <int>[-1],
            null,
            null,
            (o) => false,
            const <int>[2],
            1),
        r.TypeVariableMirrorImpl(
            r'T', r'.Entidade.T', const prefix0.Reflector(), -1, 1, null)
      ],
      <m.DeclarationMirror>[
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 1, -1, 2, 1, null, const <int>[],
            const prefix0.Reflector(), null)
      ],
      <m.ParameterMirror>[],
      <Type>[
        prefix1.Usuario,
        prefix2.Entidade,
        const r.FakeType(r'.Entidade<T>')
      ],
      2,
      {},
      {},
      null,
      [])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
