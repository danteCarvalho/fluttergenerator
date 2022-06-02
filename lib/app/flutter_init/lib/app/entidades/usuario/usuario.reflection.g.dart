//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/1.1.2
// BUILD COMMAND: dart run build_runner build
//

// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'usuario.dart';

// ignore: non_constant_identifier_names
Usuario Usuario$fromJson(Map<String, Object?> map) =>
    Usuario$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Usuario Usuario$fromJsonEncoded(String jsonEncoded) =>
    Usuario$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Usuario$reflection extends ClassReflection<Usuario> {
  Usuario$reflection([Usuario? object]) : super(Usuario, object);

  static bool _registered = false;
  @override
  void register() {
    if (!_registered) {
      _registered = true;
      super.register();
      _registerSiblingsReflection();
    }
  }

  @override
  Version get languageVersion => Version.parse('2.17.0');

  @override
  Version get reflectionFactoryVersion => Version.parse('1.1.2');

  @override
  Usuario$reflection withObject([Usuario? obj]) => Usuario$reflection(obj);

  static Usuario$reflection? _withoutObjectInstance;
  @override
  Usuario$reflection withoutObjectInstance() => _withoutObjectInstance ??=
      super.withoutObjectInstance() as Usuario$reflection;

  static Usuario$reflection get staticInstance =>
      _withoutObjectInstance ??= Usuario$reflection();

  @override
  Usuario$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Usuario$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Usuario? createInstanceWithDefaultConstructor() => Usuario();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Usuario? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Usuario? createInstanceWithNoRequiredArgsConstructor() => null;

  @override
  List<String> get constructorsNames => const <String>[''];

  @override
  ConstructorReflection<Usuario>? constructor<R>(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Usuario>(
            this, Usuario, '', () => () => Usuario(), null, null, null, null);
      default:
        return null;
    }
  }

  static const List<Object> _classAnnotations = [
    JsonSerializable(explicitToJson: true, anyMap: true),
    reflector
  ];

  @override
  List<Object> get classAnnotations =>
      List<Object>.unmodifiable(_classAnnotations);

  @override
  List<ClassReflection> siblingsClassReflection() =>
      _siblingsReflection().whereType<ClassReflection>().toList();

  @override
  List<Reflection> siblingsReflection() => _siblingsReflection();

  @override
  List<Type> get supperTypes => const <Type>[_UsuarioBase, Entidade, Store];

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Usuario? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  @override
  List<String> get fieldsNames => const <String>[
        'ativa',
        'context',
        'dataCriacao',
        'dataDelecao',
        'dataEdicao',
        'email',
        'id',
        'id2',
        'nome'
      ];

  @override
  FieldReflection<Usuario, T>? field<T>(String fieldName, [Usuario? obj]) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'nome':
        return FieldReflection<Usuario, T>(
          this,
          _UsuarioBase,
          TypeReflection.tString,
          'nome',
          true,
          (o) => () => o!.nome as T,
          (o) => (T? v) => o!.nome = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'email':
        return FieldReflection<Usuario, T>(
          this,
          _UsuarioBase,
          TypeReflection.tString,
          'email',
          true,
          (o) => () => o!.email as T,
          (o) => (T? v) => o!.email = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'id':
        return FieldReflection<Usuario, T>(
          this,
          Entidade,
          TypeReflection.tString,
          'id',
          true,
          (o) => () => o!.id as T,
          (o) => (T? v) => o!.id = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'id2':
        return FieldReflection<Usuario, T>(
          this,
          Entidade,
          TypeReflection.tInt,
          'id2',
          true,
          (o) => () => o!.id2 as T,
          (o) => (T? v) => o!.id2 = v as int?,
          obj,
          false,
          false,
          null,
        );
      case 'ativa':
        return FieldReflection<Usuario, T>(
          this,
          Entidade,
          TypeReflection.tBool,
          'ativa',
          true,
          (o) => () => o!.ativa as T,
          (o) => (T? v) => o!.ativa = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'datacriacao':
        return FieldReflection<Usuario, T>(
          this,
          Entidade,
          TypeReflection(DateTime),
          'dataCriacao',
          true,
          (o) => () => o!.dataCriacao as T,
          (o) => (T? v) => o!.dataCriacao = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'dataedicao':
        return FieldReflection<Usuario, T>(
          this,
          Entidade,
          TypeReflection(DateTime),
          'dataEdicao',
          true,
          (o) => () => o!.dataEdicao as T,
          (o) => (T? v) => o!.dataEdicao = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'datadelecao':
        return FieldReflection<Usuario, T>(
          this,
          Entidade,
          TypeReflection(DateTime),
          'dataDelecao',
          true,
          (o) => () => o!.dataDelecao as T,
          (o) => (T? v) => o!.dataDelecao = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'context':
        return FieldReflection<Usuario, T>(
          this,
          Store,
          TypeReflection(ReactiveContext),
          'context',
          false,
          (o) => () => o!.context as T,
          null,
          obj,
          false,
          false,
          null,
        );
      default:
        return null;
    }
  }

  @override
  List<String> get staticFieldsNames => const <String>[];

  @override
  FieldReflection<Usuario, T>? staticField<T>(String fieldName) {
    return null;
  }

  @override
  List<String> get methodsNames => const <String>[
        'classToMap',
        'classToString',
        'dbMaptoClassMap',
        'listMapToListClass',
        'mapToClass',
        'reflect',
        'stringToClass',
        'toJson'
      ];

  @override
  MethodReflection<Usuario, R>? method<R>(String methodName, [Usuario? obj]) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'classToMap',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.classToMap,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      case 'tojson':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'toJson',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.toJson,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      case 'dbmaptoclassmap':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'dbMaptoClassMap',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.dbMaptoClassMap,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(TypeReflection(Map, [dynamic, dynamic]),
                  'original', false, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'classtostring':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'classToString',
            TypeReflection.tString,
            false,
            (o) => o!.classToString,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      case 'stringtoclass':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'stringToClass',
            TypeReflection(Usuario),
            false,
            (o) => o!.stringToClass,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(
                  TypeReflection.tString, 'string', false, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'maptoclass':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'mapToClass',
            TypeReflection(Usuario),
            false,
            (o) => o!.mapToClass,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(TypeReflection(Map, [dynamic, dynamic]),
                  'map', false, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'listmaptolistclass':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'listMapToListClass',
            TypeReflection(List, [Usuario]),
            true,
            (o) => o!.listMapToListClass,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(
                  TypeReflection.tListDynamic, 'list', true, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'reflect':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'reflect',
            TypeReflection(ClassReflection, [dynamic]),
            false,
            (o) => o!.reflect,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      default:
        return null;
    }
  }

  @override
  List<String> get staticMethodsNames =>
      const <String>['fromJson', 'listMapToListClass2'];

  @override
  MethodReflection<Usuario, R>? staticMethod<R>(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'fromJson',
            TypeReflection.tDynamic,
            false,
            (o) => Usuario.fromJson,
            null,
            true,
            const <ParameterReflection>[
              ParameterReflection(TypeReflection(Map, [dynamic, dynamic]),
                  'map', false, true, null, null)
            ],
            null,
            null,
            null);
      case 'listmaptolistclass2':
        return MethodReflection<Usuario, R>(
            this,
            Usuario,
            'listMapToListClass2',
            TypeReflection(List, [Usuario]),
            true,
            (o) => Usuario.listMapToListClass2,
            null,
            true,
            const <ParameterReflection>[
              ParameterReflection(
                  TypeReflection.tListDynamic, 'list', true, true, null, null)
            ],
            null,
            null,
            null);
      default:
        return null;
    }
  }
}

extension Usuario$reflectionExtension on Usuario {
  /// Returns a [ClassReflection] for type [Usuario]. (Generated by [ReflectionFactory])
  ClassReflection<Usuario> get reflection => Usuario$reflection(this);

  /// Returns a JSON [Map] for type [Usuario]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Usuario]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Usuario] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Usuario$reflection(),
    ];

List<Reflection>? _siblingsReflectionList;
List<Reflection> _siblingsReflection() => _siblingsReflectionList ??=
    List<Reflection>.unmodifiable(_listSiblingsReflection());

bool _registerSiblingsReflectionCalled = false;
void _registerSiblingsReflection() {
  if (_registerSiblingsReflectionCalled) return;
  _registerSiblingsReflectionCalled = true;
  var length = _listSiblingsReflection().length;
  assert(length > 0);
}
