// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:teste/entidades/empresa/empresa.dart' as prefix2;
import 'package:teste/entidades/entidade.dart' as prefix3;
import 'package:teste/entidades/usuario/usuario.dart' as prefix1;
import 'package:teste/outros/entidade_helper.dart' as prefix0;

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
        r.NonGenericClassMirrorImpl(
            r'Empresa',
            r'.Empresa',
            7,
            1,
            const prefix0.Reflector(),
            const <int>[1],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.Empresa() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.GenericClassMirrorImpl(
            r'Entidade',
            r'.Entidade',
            519,
            2,
            const prefix0.Reflector(),
            const <int>[2],
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
            const <int>[3],
            2),
        r.TypeVariableMirrorImpl(
            r'T', r'.Entidade.T', const prefix0.Reflector(), -1, 2, null)
      ],
      <m.DeclarationMirror>[
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 2, -1, 3, 2, null, const <int>[],
            const prefix0.Reflector(), null)
      ],
      <m.ParameterMirror>[],
      <Type>[
        prefix1.Usuario,
        prefix2.Empresa,
        prefix3.Entidade,
        const r.FakeType(r'.Entidade<T>')
      ],
      3,
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
