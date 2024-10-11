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

part of 'google_login.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.4.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
GoogleLoginEndpoint GoogleLoginEndpoint$fromJson(Map<String, Object?> map) =>
    GoogleLoginEndpoint$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
GoogleLoginEndpoint GoogleLoginEndpoint$fromJsonEncoded(String jsonEncoded) =>
    GoogleLoginEndpoint$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class GoogleLoginEndpoint$reflection
    extends ClassReflection<GoogleLoginEndpoint> with __ReflectionMixin {
  static final Expando<GoogleLoginEndpoint$reflection> _objectReflections =
      Expando();

  factory GoogleLoginEndpoint$reflection([GoogleLoginEndpoint? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??=
        GoogleLoginEndpoint$reflection._(object);
  }

  GoogleLoginEndpoint$reflection._([GoogleLoginEndpoint? object])
      : super(GoogleLoginEndpoint, r'GoogleLoginEndpoint', object);

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
  GoogleLoginEndpoint$reflection withObject([GoogleLoginEndpoint? obj]) =>
      GoogleLoginEndpoint$reflection(obj)..setupInternalsWith(this);

  static GoogleLoginEndpoint$reflection? _withoutObjectInstance;
  @override
  GoogleLoginEndpoint$reflection withoutObjectInstance() => staticInstance;

  static GoogleLoginEndpoint$reflection get staticInstance =>
      _withoutObjectInstance ??= GoogleLoginEndpoint$reflection._();

  @override
  GoogleLoginEndpoint$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    GoogleLoginEndpoint$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  GoogleLoginEndpoint? createInstanceWithDefaultConstructor() =>
      GoogleLoginEndpoint();

  @override
  bool get hasEmptyConstructor => false;
  @override
  GoogleLoginEndpoint? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  GoogleLoginEndpoint? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<GoogleLoginEndpoint>>
      _constructors = {};

  @override
  ConstructorReflection<GoogleLoginEndpoint>? constructor(
      String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<GoogleLoginEndpoint>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<GoogleLoginEndpoint>(
            this,
            GoogleLoginEndpoint,
            '',
            () => () => GoogleLoginEndpoint(),
            null,
            null,
            null,
            null);
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
  Object? callMethodToJson([GoogleLoginEndpoint? obj]) => null;

  static const List<String> _fieldsNames = const <String>[];

  @override
  List<String> get fieldsNames => _fieldsNames;

  @override
  FieldReflection<GoogleLoginEndpoint, T>? field<T>(String fieldName,
          [GoogleLoginEndpoint? obj]) =>
      null;

  @override
  Map<String, dynamic> getFieldsValues(GoogleLoginEndpoint? obj,
          {bool withHashCode = false}) =>
      {
        if (withHashCode) 'hashCode': obj?.hashCode,
      };

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<GoogleLoginEndpoint, T>? staticField<T>(
          String fieldName) =>
      null;

  static const List<String> _methodsNames = const <String>[
    'getRouter',
    'googleLogin',
    'googleToken',
    'obtainAccessCredentials',
    'reflect'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<GoogleLoginEndpoint, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<GoogleLoginEndpoint, dynamic>>
      _methodsObject = {};

  @override
  MethodReflection<GoogleLoginEndpoint, R>? method<R>(String methodName,
      [GoogleLoginEndpoint? obj]) {
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

  MethodReflection<GoogleLoginEndpoint, R>? _methodNoObjectImpl<R>(
      String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<GoogleLoginEndpoint, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<GoogleLoginEndpoint, R>;
  }

  MethodReflection<GoogleLoginEndpoint, R>? _methodObjectImpl<R>(
      String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<GoogleLoginEndpoint, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<GoogleLoginEndpoint, dynamic>? _methodImpl(
      String methodName, GoogleLoginEndpoint? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'googlelogin':
        return MethodReflection<GoogleLoginEndpoint, Future<Response>>(
            this,
            GoogleLoginEndpoint,
            'googleLogin',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.googleLogin,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/googleLogin')]);
      case 'googletoken':
        return MethodReflection<GoogleLoginEndpoint, Future<Response>>(
            this,
            GoogleLoginEndpoint,
            'googleToken',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.googleToken,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.get('/googleToken')]);
      case 'obtainaccesscredentials':
        return MethodReflection<GoogleLoginEndpoint, Future<String>>(
            this,
            GoogleLoginEndpoint,
            'obtainAccessCredentials',
            __TR.tFutureString,
            false,
            (o) => o!.obtainAccessCredentials,
            obj,
            null,
            null,
            null,
            null);
      case 'getrouter':
        return MethodReflection<GoogleLoginEndpoint, Router>(
            this,
            GoogleLoginEndpoint,
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
        return MethodReflection<GoogleLoginEndpoint, ClassReflection<dynamic>>(
            this,
            GoogleLoginEndpoint,
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
  StaticMethodReflection<GoogleLoginEndpoint, R>? staticMethod<R>(
          String methodName) =>
      null;
}

extension GoogleLoginEndpoint$reflectionExtension on GoogleLoginEndpoint {
  /// Returns a [ClassReflection] for type [GoogleLoginEndpoint]. (Generated by [ReflectionFactory])
  ClassReflection<GoogleLoginEndpoint> get reflection =>
      GoogleLoginEndpoint$reflection(this);

  /// Returns a JSON for type [GoogleLoginEndpoint]. (Generated by [ReflectionFactory])
  Object? toJson({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJson(null, null, duplicatedEntitiesAsID);

  /// Returns a JSON [Map] for type [GoogleLoginEndpoint]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [GoogleLoginEndpoint]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [GoogleLoginEndpoint] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      GoogleLoginEndpoint$reflection(),
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
