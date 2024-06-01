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

part of 'local_config.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.2.8');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
LocalConfig LocalConfig$fromJson(Map<String, Object?> map) =>
    LocalConfig$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
LocalConfig LocalConfig$fromJsonEncoded(String jsonEncoded) =>
    LocalConfig$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class LocalConfig$reflection extends ClassReflection<LocalConfig>
    with __ReflectionMixin {
  static final Expando<LocalConfig$reflection> _objectReflections = Expando();

  factory LocalConfig$reflection([LocalConfig? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= LocalConfig$reflection._(object);
  }

  LocalConfig$reflection._([LocalConfig? object])
      : super(LocalConfig, 'LocalConfig', object);

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
  LocalConfig$reflection withObject([LocalConfig? obj]) =>
      LocalConfig$reflection(obj)..setupInternalsWith(this);

  static LocalConfig$reflection? _withoutObjectInstance;
  @override
  LocalConfig$reflection withoutObjectInstance() => staticInstance;

  static LocalConfig$reflection get staticInstance =>
      _withoutObjectInstance ??= LocalConfig$reflection._();

  @override
  LocalConfig$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    LocalConfig$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  LocalConfig? createInstanceWithDefaultConstructor() => LocalConfig();

  @override
  bool get hasEmptyConstructor => false;
  @override
  LocalConfig? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  LocalConfig? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<LocalConfig>> _constructors =
      <String, ConstructorReflection<LocalConfig>>{};

  @override
  ConstructorReflection<LocalConfig>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<LocalConfig>? _constructorImpl(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<LocalConfig>(this, LocalConfig, '',
            () => () => LocalConfig(), null, null, null, null);
      default:
        return null;
    }
  }

  static const List<Object> _classAnnotations = const [
    JsonSerializable(explicitToJson: true, anyMap: true),
    reflector
  ];

  @override
  List<Object> get classAnnotations => _classAnnotations;

  static const List<Type> _supperTypes = const <Type>[
    _LocalConfigBase,
    Store,
    _$LocalConfig
  ];

  @override
  List<Type> get supperTypes => _supperTypes;

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([LocalConfig? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  static const List<String> _fieldsNames = const <String>['context'];

  @override
  List<String> get fieldsNames => _fieldsNames;

  static final Map<String, FieldReflection<LocalConfig, dynamic>>
      _fieldsNoObject = <String, FieldReflection<LocalConfig, dynamic>>{};

  final Map<String, FieldReflection<LocalConfig, dynamic>> _fieldsObject =
      <String, FieldReflection<LocalConfig, dynamic>>{};

  @override
  FieldReflection<LocalConfig, T>? field<T>(String fieldName,
      [LocalConfig? obj]) {
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

  FieldReflection<LocalConfig, T>? _fieldNoObjectImpl<T>(String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<LocalConfig, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<LocalConfig, T>;
  }

  FieldReflection<LocalConfig, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<LocalConfig, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<LocalConfig, dynamic>? _fieldImpl(
      String fieldName, LocalConfig? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'context':
        return FieldReflection<LocalConfig, ReactiveContext>(
          this,
          Store,
          __TR<ReactiveContext>(ReactiveContext),
          'context',
          false,
          (o) => () => o!.context,
          null,
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
  FieldReflection<LocalConfig, T>? staticField<T>(String fieldName) => null;

  static const List<String> _methodsNames = const <String>[
    'classToMap',
    'classToString',
    'dbMaptoClassMap',
    'listMapToListClass',
    'mapToClass',
    'reflect',
    'stringToClass',
    'toJson',
    'toString'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<LocalConfig, dynamic>>
      _methodsNoObject = <String, MethodReflection<LocalConfig, dynamic>>{};

  final Map<String, MethodReflection<LocalConfig, dynamic>> _methodsObject =
      <String, MethodReflection<LocalConfig, dynamic>>{};

  @override
  MethodReflection<LocalConfig, R>? method<R>(String methodName,
      [LocalConfig? obj]) {
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

  MethodReflection<LocalConfig, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<LocalConfig, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<LocalConfig, R>;
  }

  MethodReflection<LocalConfig, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<LocalConfig, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<LocalConfig, dynamic>? _methodImpl(
      String methodName, LocalConfig? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<LocalConfig, Map<String, dynamic>>(
            this,
            LocalConfig,
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
        return MethodReflection<LocalConfig, Map<String, dynamic>>(
            this,
            LocalConfig,
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
        return MethodReflection<LocalConfig, Map<String, dynamic>>(
            this,
            LocalConfig,
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
        return MethodReflection<LocalConfig, String>(
            this,
            LocalConfig,
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
      case 'stringtoclass':
        return MethodReflection<LocalConfig, LocalConfig>(
            this,
            LocalConfig,
            'stringToClass',
            __TR<LocalConfig>(LocalConfig),
            false,
            (o) => o!.stringToClass,
            obj,
            false,
            const <__PR>[__PR(__TR.tString, 'string', false, true)],
            null,
            null,
            null);
      case 'maptoclass':
        return MethodReflection<LocalConfig, LocalConfig>(
            this,
            LocalConfig,
            'mapToClass',
            __TR<LocalConfig>(LocalConfig),
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
        return MethodReflection<LocalConfig, List<LocalConfig>?>(
            this,
            LocalConfig,
            'listMapToListClass',
            __TR<List<LocalConfig>>(
                List, <__TR>[__TR<LocalConfig>(LocalConfig)]),
            true,
            (o) => o!.listMapToListClass,
            obj,
            false,
            const <__PR>[__PR(__TR.tListDynamic, 'list', true, true)],
            null,
            null,
            null);
      case 'reflect':
        return MethodReflection<LocalConfig, ClassReflection<LocalConfig>>(
            this,
            LocalConfig,
            'reflect',
            __TR<ClassReflection<LocalConfig>>(
                ClassReflection, <__TR>[__TR<LocalConfig>(LocalConfig)]),
            false,
            (o) => o!.reflect,
            obj,
            false,
            null,
            null,
            null,
            null);
      case 'tostring':
        return MethodReflection<LocalConfig, String>(
            this,
            _$LocalConfig,
            'toString',
            __TR.tString,
            false,
            (o) => o!.toString,
            obj,
            false,
            null,
            null,
            null,
            const [override]);
      default:
        return null;
    }
  }

  static const List<String> _staticMethodsNames = const <String>[
    'fromJson',
    'listMapToListClass2'
  ];

  @override
  List<String> get staticMethodsNames => _staticMethodsNames;

  static final Map<String, MethodReflection<LocalConfig, dynamic>>
      _staticMethods = <String, MethodReflection<LocalConfig, dynamic>>{};

  @override
  MethodReflection<LocalConfig, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as MethodReflection<LocalConfig, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as MethodReflection<LocalConfig, R>;
  }

  MethodReflection<LocalConfig, dynamic>? _staticMethodImpl(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<LocalConfig, LocalConfig>(
            this,
            LocalConfig,
            'fromJson',
            __TR<LocalConfig>(LocalConfig),
            false,
            (o) => LocalConfig.fromJson,
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
      case 'listmaptolistclass2':
        return MethodReflection<LocalConfig, List<LocalConfig>?>(
            this,
            LocalConfig,
            'listMapToListClass2',
            __TR<List<LocalConfig>>(
                List, <__TR>[__TR<LocalConfig>(LocalConfig)]),
            true,
            (o) => LocalConfig.listMapToListClass2,
            null,
            true,
            const <__PR>[__PR(__TR.tListDynamic, 'list', true, true)],
            null,
            null,
            null);
      default:
        return null;
    }
  }
}

extension LocalConfig$reflectionExtension on LocalConfig {
  /// Returns a [ClassReflection] for type [LocalConfig]. (Generated by [ReflectionFactory])
  ClassReflection<LocalConfig> get reflection => LocalConfig$reflection(this);

  /// Returns a JSON [Map] for type [LocalConfig]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [LocalConfig]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [LocalConfig] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      LocalConfig$reflection(),
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
