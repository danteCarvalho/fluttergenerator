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

part of 'login.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.2.8');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
LoginEndpoint LoginEndpoint$fromJson(Map<String, Object?> map) =>
    LoginEndpoint$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
LoginEndpoint LoginEndpoint$fromJsonEncoded(String jsonEncoded) =>
    LoginEndpoint$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class LoginEndpoint$reflection extends ClassReflection<LoginEndpoint>
    with __ReflectionMixin {
  static final Expando<LoginEndpoint$reflection> _objectReflections = Expando();

  factory LoginEndpoint$reflection([LoginEndpoint? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= LoginEndpoint$reflection._(object);
  }

  LoginEndpoint$reflection._([LoginEndpoint? object])
      : super(LoginEndpoint, 'LoginEndpoint', object);

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
  LoginEndpoint$reflection withObject([LoginEndpoint? obj]) =>
      LoginEndpoint$reflection(obj)..setupInternalsWith(this);

  static LoginEndpoint$reflection? _withoutObjectInstance;
  @override
  LoginEndpoint$reflection withoutObjectInstance() => staticInstance;

  static LoginEndpoint$reflection get staticInstance =>
      _withoutObjectInstance ??= LoginEndpoint$reflection._();

  @override
  LoginEndpoint$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    LoginEndpoint$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  LoginEndpoint? createInstanceWithDefaultConstructor() => LoginEndpoint();

  @override
  bool get hasEmptyConstructor => false;
  @override
  LoginEndpoint? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  LoginEndpoint? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<LoginEndpoint>> _constructors =
      <String, ConstructorReflection<LoginEndpoint>>{};

  @override
  ConstructorReflection<LoginEndpoint>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<LoginEndpoint>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<LoginEndpoint>(this, LoginEndpoint, '',
            () => () => LoginEndpoint(), null, null, null, null);
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
  Object? callMethodToJson([LoginEndpoint? obj]) => null;

  static const List<String> _fieldsNames = const <String>[];

  @override
  List<String> get fieldsNames => _fieldsNames;

  @override
  FieldReflection<LoginEndpoint, T>? field<T>(String fieldName,
          [LoginEndpoint? obj]) =>
      null;
  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  FieldReflection<LoginEndpoint, T>? staticField<T>(String fieldName) => null;

  static const List<String> _methodsNames = const <String>[
    'getRouter',
    'login',
    'reflect'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<LoginEndpoint, dynamic>>
      _methodsNoObject = <String, MethodReflection<LoginEndpoint, dynamic>>{};

  final Map<String, MethodReflection<LoginEndpoint, dynamic>> _methodsObject =
      <String, MethodReflection<LoginEndpoint, dynamic>>{};

  @override
  MethodReflection<LoginEndpoint, R>? method<R>(String methodName,
      [LoginEndpoint? obj]) {
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

  MethodReflection<LoginEndpoint, R>? _methodNoObjectImpl<R>(
      String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<LoginEndpoint, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<LoginEndpoint, R>;
  }

  MethodReflection<LoginEndpoint, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<LoginEndpoint, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<LoginEndpoint, dynamic>? _methodImpl(
      String methodName, LoginEndpoint? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'login':
        return MethodReflection<LoginEndpoint, Future<Response>>(
            this,
            LoginEndpoint,
            'login',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.login,
            obj,
            false,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/login')]);
      case 'getrouter':
        return MethodReflection<LoginEndpoint, Router>(
            this,
            LoginEndpoint,
            'getRouter',
            __TR<Router>(Router),
            false,
            (o) => o!.getRouter,
            obj,
            false,
            null,
            null,
            null,
            const [override]);
      case 'reflect':
        return MethodReflection<LoginEndpoint, ClassReflection<dynamic>>(
            this,
            LoginEndpoint,
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
            const [override]);
      default:
        return null;
    }
  }

  static const List<String> _staticMethodsNames = const <String>[];

  @override
  List<String> get staticMethodsNames => _staticMethodsNames;

  @override
  MethodReflection<LoginEndpoint, R>? staticMethod<R>(String methodName) =>
      null;
}

extension LoginEndpoint$reflectionExtension on LoginEndpoint {
  /// Returns a [ClassReflection] for type [LoginEndpoint]. (Generated by [ReflectionFactory])
  ClassReflection<LoginEndpoint> get reflection =>
      LoginEndpoint$reflection(this);

  /// Returns a JSON for type [LoginEndpoint]. (Generated by [ReflectionFactory])
  Object? toJson({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJson(null, null, duplicatedEntitiesAsID);

  /// Returns a JSON [Map] for type [LoginEndpoint]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [LoginEndpoint]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [LoginEndpoint] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      LoginEndpoint$reflection(),
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
