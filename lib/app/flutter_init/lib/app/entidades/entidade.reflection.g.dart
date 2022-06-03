//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/1.1.2
// BUILD COMMAND: dart run build_runner build
//

// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'entidade.dart';

// ignore: non_constant_identifier_names
Entidade Entidade$fromJson(Map<String, Object?> map) =>
    Entidade$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Entidade Entidade$fromJsonEncoded(String jsonEncoded) =>
    Entidade$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Entidade$reflection extends ClassReflection<Entidade> {
  Entidade$reflection([Entidade? object]) : super(Entidade, object);

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
  Entidade$reflection withObject([Entidade? obj]) => Entidade$reflection(obj);

  static Entidade$reflection? _withoutObjectInstance;
  @override
  Entidade$reflection withoutObjectInstance() => _withoutObjectInstance ??=
      super.withoutObjectInstance() as Entidade$reflection;

  static Entidade$reflection get staticInstance =>
      _withoutObjectInstance ??= Entidade$reflection();

  @override
  Entidade$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Entidade$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => false;
  @override
  Entidade? createInstanceWithDefaultConstructor() => null;

  @override
  bool get hasEmptyConstructor => false;
  @override
  Entidade? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Entidade? createInstanceWithNoRequiredArgsConstructor() => null;

  @override
  List<String> get constructorsNames => const <String>[];

  @override
  ConstructorReflection<Entidade>? constructor<R>(String constructorName) {
    return null;
  }

  static const List<Object> _classAnnotations = [reflector];

  @override
  List<Object> get classAnnotations =>
      List<Object>.unmodifiable(_classAnnotations);

  @override
  List<ClassReflection> siblingsClassReflection() =>
      _siblingsReflection().whereType<ClassReflection>().toList();

  @override
  List<Reflection> siblingsReflection() => _siblingsReflection();

  @override
  List<Type> get supperTypes => const <Type>[];

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Entidade? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  @override
  List<String> get fieldsNames => const <String>[
        'ativa',
        'dataCriacao',
        'dataDelecao',
        'dataEdicao',
        'id',
        'id2'
      ];

  @override
  FieldReflection<Entidade, T>? field<T>(String fieldName, [Entidade? obj]) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'id':
        return FieldReflection<Entidade, T>(
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
        return FieldReflection<Entidade, T>(
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
        return FieldReflection<Entidade, T>(
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
        return FieldReflection<Entidade, T>(
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
        return FieldReflection<Entidade, T>(
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
        return FieldReflection<Entidade, T>(
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
      default:
        return null;
    }
  }

  @override
  List<String> get staticFieldsNames => const <String>[];

  @override
  FieldReflection<Entidade, T>? staticField<T>(String fieldName) {
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
  MethodReflection<Entidade, R>? method<R>(String methodName, [Entidade? obj]) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'classToMap',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.classToMap,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'tojson':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'toJson',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.toJson,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'dbmaptoclassmap':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
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
            null);
      case 'classtostring':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'classToString',
            TypeReflection.tString,
            false,
            (o) => o!.classToString,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'stringtoclass':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'stringToClass',
            TypeReflection.tDynamic,
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
            null);
      case 'maptoclass':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'mapToClass',
            TypeReflection.tDynamic,
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
            null);
      case 'listmaptolistclass':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'listMapToListClass',
            TypeReflection.tListDynamic,
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
            null);
      case 'reflect':
        return MethodReflection<Entidade, R>(
            this,
            Entidade,
            'reflect',
            TypeReflection(ClassReflection, [dynamic]),
            false,
            (o) => o!.reflect,
            obj,
            false,
            null,
            null,
            null,
            null);
      default:
        return null;
    }
  }

  @override
  List<String> get staticMethodsNames => const <String>[];

  @override
  MethodReflection<Entidade, R>? staticMethod<R>(String methodName) {
    return null;
  }
}

extension Entidade$reflectionExtension on Entidade {
  /// Returns a [ClassReflection] for type [Entidade]. (Generated by [ReflectionFactory])
  ClassReflection<Entidade> get reflection => Entidade$reflection(this);

  /// Returns a JSON [Map] for type [Entidade]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Entidade]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Entidade] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Entidade$reflection(),
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
