// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
import 'dart:core';
import 'package:dartutils/src/generators/router/router.dart' as prefix7;
import 'package:teste/app/entidades/empresa/empresa.dart' as prefix3;
import 'package:teste/app/entidades/entidade.dart' as prefix4;
import 'package:teste/app/entidades/imagem/imagem.dart' as prefix5;
import 'package:teste/app/entidades/pagamento_sistema/pagamento_sistema.dart'
    as prefix6;
import 'package:teste/app/entidades/usuario/usuario.dart' as prefix2;
import 'package:teste/app/outros/config/config.dart' as prefix1;
import 'package:teste/app/outros/entidade_helper.dart' as prefix0;

// ignore_for_file: camel_case_types
// ignore_for_file: implementation_imports
// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: unused_import

import 'package:reflectable/mirrors.dart' as m;
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.Reflector(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'Config',
            r'.Config',
            134217735,
            0,
            const prefix0.Reflector(),
            const <int>[0],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix1.Config() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'Usuario',
            r'.Usuario',
            134217735,
            1,
            const prefix0.Reflector(),
            const <int>[1],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.Usuario() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'Empresa',
            r'.Empresa',
            134217735,
            2,
            const prefix0.Reflector(),
            const <int>[2],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix3.Empresa() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.GenericClassMirrorImpl(
            r'Entidade',
            r'.Entidade',
            134218247,
            3,
            const prefix0.Reflector(),
            const <int>[3],
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
            const <int>[15],
            3),
        r.NonGenericClassMirrorImpl(
            r'Imagem',
            r'.Imagem',
            134217735,
            4,
            const prefix0.Reflector(),
            const <int>[4],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix5.Imagem() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'PagamentoSistema',
            r'.PagamentoSistema',
            134217735,
            5,
            const prefix0.Reflector(),
            const <int>[5],
            const <int>[],
            const <int>[],
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix6.PagamentoSistema() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'dart.core.Object with ._$Serial',
            r'.dart.core.Object with ._$Serial',
            134218311,
            6,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._UsuarioBase with ._$Usuario',
            r'.._UsuarioBase with ._$Usuario',
            134218311,
            7,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._UsuarioBase with ._$Usuario, ._$Serial',
            r'.._UsuarioBase with ._$Usuario, ._$Serial',
            134218311,
            8,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._EmpresaBase with ._$Empresa',
            r'.._EmpresaBase with ._$Empresa',
            134218311,
            9,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._EmpresaBase with ._$Empresa, ._$Serial',
            r'.._EmpresaBase with ._$Empresa, ._$Serial',
            134218311,
            10,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._ImagemBase with ._$Imagem',
            r'.._ImagemBase with ._$Imagem',
            134218311,
            11,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._ImagemBase with ._$Imagem, ._$Serial',
            r'.._ImagemBase with ._$Imagem, ._$Serial',
            134218311,
            12,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._PagamentoSistemaBase with ._$PagamentoSistema',
            r'.._PagamentoSistemaBase with ._$PagamentoSistema',
            134218311,
            13,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.NonGenericClassMirrorImpl(
            r'._PagamentoSistemaBase with ._$PagamentoSistema, ._$Serial',
            r'.._PagamentoSistemaBase with ._$PagamentoSistema, ._$Serial',
            134218311,
            14,
            const prefix0.Reflector(),
            const <int>[],
            const <int>[],
            const <int>[],
            -1,
            const {},
            const {},
            const {},
            -1,
            -1,
            const <int>[-1],
            null,
            null),
        r.TypeVariableMirrorImpl(
            r'T', r'.Entidade.T', const prefix0.Reflector(), -1, 3, null)
      ],
      <m.DeclarationMirror>[
        r.MethodMirrorImpl(r'', 64, 0, -1, 0, 0, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 1, -1, 1, 1, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 2, -1, 2, 2, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 3, -1, 15, 3, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 4, -1, 4, 4, null, const <int>[],
            const prefix0.Reflector(), null),
        r.MethodMirrorImpl(r'', 64, 5, -1, 5, 5, null, const <int>[],
            const prefix0.Reflector(), null)
      ],
      <m.ParameterMirror>[],
      <Type>[
        prefix1.Config,
        prefix2.Usuario,
        prefix3.Empresa,
        prefix4.Entidade,
        prefix5.Imagem,
        prefix6.PagamentoSistema,
        const r.FakeType(r'.dart.core.Object with ._$Serial'),
        const r.FakeType(r'.._UsuarioBase with ._$Usuario'),
        const r.FakeType(r'.._UsuarioBase with ._$Usuario, ._$Serial'),
        const r.FakeType(r'.._EmpresaBase with ._$Empresa'),
        const r.FakeType(r'.._EmpresaBase with ._$Empresa, ._$Serial'),
        const r.FakeType(r'.._ImagemBase with ._$Imagem'),
        const r.FakeType(r'.._ImagemBase with ._$Imagem, ._$Serial'),
        const r.FakeType(r'.._PagamentoSistemaBase with ._$PagamentoSistema'),
        const r.FakeType(
            r'.._PagamentoSistemaBase with ._$PagamentoSistema, ._$Serial'),
        const r.FakeType(r'.Entidade<T>')
      ],
      15,
      {},
      {},
      null,
      []),
  const prefix7.RouterAnnotation(): r.ReflectorData(
      <m.TypeMirror>[],
      <m.DeclarationMirror>[],
      <m.ParameterMirror>[],
      <Type>[],
      0,
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
