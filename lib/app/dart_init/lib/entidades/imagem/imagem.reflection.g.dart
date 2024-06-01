//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/2.2.8
// BUILD COMMAND: dart run build_runner build
//

// coverage:ignore-file
// ignore_for_file: unused_element
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'imagem.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.2.8');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
Imagem Imagem$fromJson(Map<String, Object?> map) =>
    Imagem$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Imagem Imagem$fromJsonEncoded(String jsonEncoded) =>
    Imagem$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Imagem$reflection extends ClassReflection<Imagem> with __ReflectionMixin {
  static final Expando<Imagem$reflection> _objectReflections = Expando();

  factory Imagem$reflection([Imagem? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= Imagem$reflection._(object);
  }

  Imagem$reflection._([Imagem? object]) : super(Imagem, 'Imagem', object);

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
  Version get languageVersion => Version.parse('3.4.0');

  @override
  Imagem$reflection withObject([Imagem? obj]) =>
      Imagem$reflection(obj)..setupInternalsWith(this);

  static Imagem$reflection? _withoutObjectInstance;
  @override
  Imagem$reflection withoutObjectInstance() => staticInstance;

  static Imagem$reflection get staticInstance =>
      _withoutObjectInstance ??= Imagem$reflection._();

  @override
  Imagem$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Imagem$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Imagem? createInstanceWithDefaultConstructor() => Imagem();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Imagem? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Imagem? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<Imagem>> _constructors =
      <String, ConstructorReflection<Imagem>>{};

  @override
  ConstructorReflection<Imagem>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<Imagem>? _constructorImpl(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Imagem>(
            this, Imagem, '', () => () => Imagem(), null, null, null, null);
      default:
        return null;
    }
  }

  static const List<Object> _classAnnotations = const [
    JsonSerializable(explicitToJson: true, anyMap: true),
    reflector,
    SerialAnnotation()
  ];

  @override
  List<Object> get classAnnotations => _classAnnotations;

  static const List<Type> _supperTypes = const <Type>[
    Entidade,
    SerialMethods,
    _$Serial
  ];

  @override
  List<Type> get supperTypes => _supperTypes;

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Imagem? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  static const List<String> _fieldsNames = const <String>[
    'ativa',
    'dataCriacao',
    'dataDelecao',
    'dataEdicao',
    'id',
    'id2',
    'name',
    'size',
    'value'
  ];

  @override
  List<String> get fieldsNames => _fieldsNames;

  static final Map<String, FieldReflection<Imagem, dynamic>> _fieldsNoObject =
      <String, FieldReflection<Imagem, dynamic>>{};

  final Map<String, FieldReflection<Imagem, dynamic>> _fieldsObject =
      <String, FieldReflection<Imagem, dynamic>>{};

  @override
  FieldReflection<Imagem, T>? field<T>(String fieldName, [Imagem? obj]) {
    if (obj == null) {
      if (object != null) {
        return _fieldObjectImpl<T>(fieldName);
      } else {
        return _fieldNoObjectImpl<T>(fieldName);
      }
    } else if (identical(obj, object)) {
      return _fieldObjectImpl<T>(fieldName);
    }
    return _fieldNoObjectImpl<T>(fieldName)?.withObject(obj);
  }

  FieldReflection<Imagem, T>? _fieldNoObjectImpl<T>(String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Imagem, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<Imagem, T>;
  }

  FieldReflection<Imagem, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Imagem, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<Imagem, dynamic>? _fieldImpl(String fieldName, Imagem? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'value':
        return FieldReflection<Imagem, String?>(
          this,
          Imagem,
          __TR.tString,
          'value',
          true,
          (o) => () => o!.value,
          (o) => (v) => o!.value = v,
          obj,
          false,
          false,
          const [Coluna(tipo: "character varying", nullable: false)],
        );
      case 'name':
        return FieldReflection<Imagem, String?>(
          this,
          Imagem,
          __TR.tString,
          'name',
          true,
          (o) => () => o!.name,
          (o) => (v) => o!.name = v,
          obj,
          false,
          false,
        );
      case 'size':
        return FieldReflection<Imagem, int?>(
          this,
          Imagem,
          __TR.tInt,
          'size',
          true,
          (o) => () => o!.size,
          (o) => (v) => o!.size = v,
          obj,
          false,
          false,
        );
      case 'id':
        return FieldReflection<Imagem, String?>(
          this,
          Entidade,
          __TR.tString,
          'id',
          true,
          (o) => () => o!.id,
          (o) => (v) => o!.id = v,
          obj,
          false,
          false,
          const [
            Coluna(
                tipo: "uuid",
                primaryKey: true,
                nullable: false,
                defaultValue: "uuid_generate_v4()")
          ],
        );
      case 'id2':
        return FieldReflection<Imagem, int?>(
          this,
          Entidade,
          __TR.tInt,
          'id2',
          true,
          (o) => () => o!.id2,
          (o) => (v) => o!.id2 = v,
          obj,
          false,
          false,
          const [Coluna(tipo: "bigint", defaultValue: "sequence")],
        );
      case 'ativa':
        return FieldReflection<Imagem, bool?>(
          this,
          Entidade,
          __TR.tBool,
          'ativa',
          true,
          (o) => () => o!.ativa,
          (o) => (v) => o!.ativa = v,
          obj,
          false,
          false,
        );
      case 'datacriacao':
        return FieldReflection<Imagem, DateTime?>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataCriacao',
          true,
          (o) => () => o!.dataCriacao,
          (o) => (v) => o!.dataCriacao = v,
          obj,
          false,
          false,
        );
      case 'dataedicao':
        return FieldReflection<Imagem, DateTime?>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataEdicao',
          true,
          (o) => () => o!.dataEdicao,
          (o) => (v) => o!.dataEdicao = v,
          obj,
          false,
          false,
        );
      case 'datadelecao':
        return FieldReflection<Imagem, DateTime?>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataDelecao',
          true,
          (o) => () => o!.dataDelecao,
          (o) => (v) => o!.dataDelecao = v,
          obj,
          false,
          false,
        );
      default:
        return null;
    }
  }

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  FieldReflection<Imagem, T>? staticField<T>(String fieldName) => null;

  static const List<String> _methodsNames = const <String>[
    'classToMap',
    'classToString',
    'dbMaptoClassMap',
    'listClassToString',
    'listMapToListClass',
    'listStringToListClass',
    'mapToClass',
    'reflect',
    'stringToClass',
    'toJson'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<Imagem, dynamic>> _methodsNoObject =
      <String, MethodReflection<Imagem, dynamic>>{};

  final Map<String, MethodReflection<Imagem, dynamic>> _methodsObject =
      <String, MethodReflection<Imagem, dynamic>>{};

  @override
  MethodReflection<Imagem, R>? method<R>(String methodName, [Imagem? obj]) {
    if (obj == null) {
      if (object != null) {
        return _methodObjectImpl<R>(methodName);
      } else {
        return _methodNoObjectImpl<R>(methodName);
      }
    } else if (identical(obj, object)) {
      return _methodObjectImpl<R>(methodName);
    }
    return _methodNoObjectImpl<R>(methodName)?.withObject(obj);
  }

  MethodReflection<Imagem, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<Imagem, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<Imagem, R>;
  }

  MethodReflection<Imagem, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<Imagem, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<Imagem, dynamic>? _methodImpl(
      String methodName, Imagem? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'reflect':
        return MethodReflection<Imagem, ClassReflection<dynamic>>(
            this,
            Entidade,
            'reflect',
            __TR<ClassReflection<dynamic>>(
                ClassReflection, <__TR>[__TR.tDynamic]),
            false,
            (o) => o!.reflect,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'classtomap':
        return MethodReflection<Imagem, Map<String, dynamic>>(
            this,
            SerialMethods,
            'classToMap',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.classToMap,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'tojson':
        return MethodReflection<Imagem, Map<String, dynamic>>(
            this,
            SerialMethods,
            'toJson',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.toJson,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'dbmaptoclassmap':
        return MethodReflection<Imagem, Map<String, dynamic>>(
            this,
            SerialMethods,
            'dbMaptoClassMap',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.dbMaptoClassMap,
            obj,
            false,
            const <__PR>[
              __PR(
                  __TR<Map<dynamic, dynamic>>(
                      Map, <__TR>[__TR.tDynamic, __TR.tDynamic]),
                  'original',
                  false,
                  true)
            ],
            null,
            null,
            null);
      case 'classtostring':
        return MethodReflection<Imagem, String>(
            this,
            SerialMethods,
            'classToString',
            __TR.tString,
            false,
            (o) => o!.classToString,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'listclasstostring':
        return MethodReflection<Imagem, String>(
            this,
            SerialMethods,
            'listClassToString',
            __TR.tString,
            false,
            (o) => o!.listClassToString,
            obj,
            false,
            const <__PR>[__PR(__TR.tListDynamic, 'list', false, true)],
            null,
            null,
            null);
      case 'stringtoclass':
        return MethodReflection<Imagem, dynamic>(
            this,
            SerialMethods,
            'stringToClass',
            __TR.tDynamic,
            false,
            (o) => o!.stringToClass,
            obj,
            false,
            const <__PR>[__PR(__TR.tString, 'string', false, true)],
            null,
            null,
            null);
      case 'maptoclass':
        return MethodReflection<Imagem, dynamic>(
            this,
            SerialMethods,
            'mapToClass',
            __TR.tDynamic,
            false,
            (o) => o!.mapToClass,
            obj,
            false,
            const <__PR>[
              __PR(
                  __TR<Map<dynamic, dynamic>>(
                      Map, <__TR>[__TR.tDynamic, __TR.tDynamic]),
                  'map',
                  false,
                  true)
            ],
            null,
            null,
            null);
      case 'listmaptolistclass':
        return MethodReflection<Imagem, List<dynamic>>(
            this,
            SerialMethods,
            'listMapToListClass',
            __TR.tListDynamic,
            false,
            (o) => o!.listMapToListClass,
            obj,
            false,
            const <__PR>[__PR(__TR.tListDynamic, 'list', false, true)],
            null,
            null,
            null);
      case 'liststringtolistclass':
        return MethodReflection<Imagem, List<dynamic>>(
            this,
            SerialMethods,
            'listStringToListClass',
            __TR.tListDynamic,
            false,
            (o) => o!.listStringToListClass,
            obj,
            false,
            const <__PR>[__PR(__TR.tString, 'listString', false, true)],
            null,
            null,
            null);
      default:
        return null;
    }
  }

  static const List<String> _staticMethodsNames = const <String>['fromJson'];

  @override
  List<String> get staticMethodsNames => _staticMethodsNames;

  static final Map<String, MethodReflection<Imagem, dynamic>> _staticMethods =
      <String, MethodReflection<Imagem, dynamic>>{};

  @override
  MethodReflection<Imagem, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as MethodReflection<Imagem, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as MethodReflection<Imagem, R>;
  }

  MethodReflection<Imagem, dynamic>? _staticMethodImpl(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<Imagem, Imagem>(
            this,
            Imagem,
            'fromJson',
            __TR<Imagem>(Imagem),
            false,
            (o) => Imagem.fromJson,
            null,
            true,
            const <__PR>[
              __PR(
                  __TR<Map<dynamic, dynamic>>(
                      Map, <__TR>[__TR.tDynamic, __TR.tDynamic]),
                  'map',
                  false,
                  true)
            ],
            null,
            null,
            null);
      default:
        return null;
    }
  }
}

extension Imagem$reflectionExtension on Imagem {
  /// Returns a [ClassReflection] for type [Imagem]. (Generated by [ReflectionFactory])
  ClassReflection<Imagem> get reflection => Imagem$reflection(this);

  /// Returns a JSON [Map] for type [Imagem]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Imagem]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Imagem] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Imagem$reflection(),
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
