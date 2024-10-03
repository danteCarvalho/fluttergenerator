//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/2.4.4
// BUILD COMMAND: dart run build_runner build
//

// coverage:ignore-file
// ignore_for_file: unused_element
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'root.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.4.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
RootEndpoint RootEndpoint$fromJson(Map<String, Object?> map) =>
    RootEndpoint$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
RootEndpoint RootEndpoint$fromJsonEncoded(String jsonEncoded) =>
    RootEndpoint$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class RootEndpoint$reflection extends ClassReflection<RootEndpoint>
    with __ReflectionMixin {
  static final Expando<RootEndpoint$reflection> _objectReflections = Expando();

  factory RootEndpoint$reflection([RootEndpoint? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= RootEndpoint$reflection._(object);
  }

  RootEndpoint$reflection._([RootEndpoint? object])
      : super(RootEndpoint, r'RootEndpoint', object);

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
  RootEndpoint$reflection withObject([RootEndpoint? obj]) =>
      RootEndpoint$reflection(obj)..setupInternalsWith(this);

  static RootEndpoint$reflection? _withoutObjectInstance;
  @override
  RootEndpoint$reflection withoutObjectInstance() => staticInstance;

  static RootEndpoint$reflection get staticInstance =>
      _withoutObjectInstance ??= RootEndpoint$reflection._();

  @override
  RootEndpoint$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    RootEndpoint$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  RootEndpoint? createInstanceWithDefaultConstructor() => RootEndpoint();

  @override
  bool get hasEmptyConstructor => false;
  @override
  RootEndpoint? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  RootEndpoint? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<RootEndpoint>> _constructors =
      {};

  @override
  ConstructorReflection<RootEndpoint>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<RootEndpoint>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<RootEndpoint>(this, RootEndpoint, '',
            () => () => RootEndpoint(), null, null, null, null);
      default:
        return null;
    }
  }

  static const List<Object> _classAnnotations = const [routerAnnotation];

  @override
  List<Object> get classAnnotations => _classAnnotations;

  static const List<Type> _supperTypes = const <Type>[RouterMethods];

  @override
  List<Type> get supperTypes => _supperTypes;

  @override
  bool get hasMethodToJson => false;

  @override
  Object? callMethodToJson([RootEndpoint? obj]) => null;

  static const List<String> _fieldsNames = const <String>[];

  @override
  List<String> get fieldsNames => _fieldsNames;

  @override
  FieldReflection<RootEndpoint, T>? field<T>(String fieldName,
          [RootEndpoint? obj]) =>
      null;

  @override
  Map<String, dynamic> getFieldsValues(RootEndpoint? obj,
          {bool withHashCode = false}) =>
      {
        if (withHashCode) 'hashCode': obj?.hashCode,
      };

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<RootEndpoint, T>? staticField<T>(String fieldName) =>
      null;

  static const List<String> _methodsNames = const <String>[
    'getRouter',
    'reflect',
    'teste'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<RootEndpoint, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<RootEndpoint, dynamic>> _methodsObject =
      {};

  @override
  MethodReflection<RootEndpoint, R>? method<R>(String methodName,
      [RootEndpoint? obj]) {
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

  MethodReflection<RootEndpoint, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<RootEndpoint, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<RootEndpoint, R>;
  }

  MethodReflection<RootEndpoint, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<RootEndpoint, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<RootEndpoint, dynamic>? _methodImpl(
      String methodName, RootEndpoint? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'teste':
        return MethodReflection<RootEndpoint, Future<Response>>(
            this,
            RootEndpoint,
            'teste',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.teste,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.get('/')]);
      case 'getrouter':
        return MethodReflection<RootEndpoint, Router>(
            this,
            RootEndpoint,
            'getRouter',
            __TR<Router>(Router),
            false,
            (o) => o!.getRouter,
            obj,
            null,
            null,
            null,
            const [override]);
      case 'reflect':
        return MethodReflection<RootEndpoint, ClassReflection<dynamic>>(
            this,
            RootEndpoint,
            'reflect',
            __TR<ClassReflection<dynamic>>(
                ClassReflection, <__TR>[__TR.tDynamic]),
            false,
            (o) => o!.reflect,
            obj,
            null,
            null,
            null,
            const [override]);
      default:
        return null;
    }
  }

  static const List<String> _staticMethodsNames = const <String>[];

  @override
  List<String> get staticMethodsNames => _staticMethodsNames;

  @override
  StaticMethodReflection<RootEndpoint, R>? staticMethod<R>(String methodName) =>
      null;
}

extension RootEndpoint$reflectionExtension on RootEndpoint {
  /// Returns a [ClassReflection] for type [RootEndpoint]. (Generated by [ReflectionFactory])
  ClassReflection<RootEndpoint> get reflection => RootEndpoint$reflection(this);

  /// Returns a JSON for type [RootEndpoint]. (Generated by [ReflectionFactory])
  Object? toJson({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJson(null, null, duplicatedEntitiesAsID);

  /// Returns a JSON [Map] for type [RootEndpoint]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [RootEndpoint]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [RootEndpoint] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      RootEndpoint$reflection(),
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
