//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/2.3.4
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

part of 'pagamento_sistema.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.3.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
PagamentoSistemaEndpoint PagamentoSistemaEndpoint$fromJson(
        Map<String, Object?> map) =>
    PagamentoSistemaEndpoint$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
PagamentoSistemaEndpoint PagamentoSistemaEndpoint$fromJsonEncoded(
        String jsonEncoded) =>
    PagamentoSistemaEndpoint$reflection.staticInstance
        .fromJsonEncoded(jsonEncoded);

class PagamentoSistemaEndpoint$reflection
    extends ClassReflection<PagamentoSistemaEndpoint> with __ReflectionMixin {
  static final Expando<PagamentoSistemaEndpoint$reflection> _objectReflections =
      Expando();

  factory PagamentoSistemaEndpoint$reflection(
      [PagamentoSistemaEndpoint? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??=
        PagamentoSistemaEndpoint$reflection._(object);
  }

  PagamentoSistemaEndpoint$reflection._([PagamentoSistemaEndpoint? object])
      : super(PagamentoSistemaEndpoint, 'PagamentoSistemaEndpoint', object);

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
  Version get languageVersion => Version.parse('3.0.0');

  @override
  PagamentoSistemaEndpoint$reflection withObject(
          [PagamentoSistemaEndpoint? obj]) =>
      PagamentoSistemaEndpoint$reflection(obj)..setupInternalsWith(this);

  static PagamentoSistemaEndpoint$reflection? _withoutObjectInstance;
  @override
  PagamentoSistemaEndpoint$reflection withoutObjectInstance() => staticInstance;

  static PagamentoSistemaEndpoint$reflection get staticInstance =>
      _withoutObjectInstance ??= PagamentoSistemaEndpoint$reflection._();

  @override
  PagamentoSistemaEndpoint$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    PagamentoSistemaEndpoint$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  PagamentoSistemaEndpoint? createInstanceWithDefaultConstructor() =>
      PagamentoSistemaEndpoint();

  @override
  bool get hasEmptyConstructor => false;
  @override
  PagamentoSistemaEndpoint? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  PagamentoSistemaEndpoint? createInstanceWithNoRequiredArgsConstructor() =>
      null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<PagamentoSistemaEndpoint>>
      _constructors = {};

  @override
  ConstructorReflection<PagamentoSistemaEndpoint>? constructor(
      String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<PagamentoSistemaEndpoint>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<PagamentoSistemaEndpoint>(
            this,
            PagamentoSistemaEndpoint,
            '',
            () => () => PagamentoSistemaEndpoint(),
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
  Object? callMethodToJson([PagamentoSistemaEndpoint? obj]) => null;

  static const List<String> _fieldsNames = const <String>[];

  @override
  List<String> get fieldsNames => _fieldsNames;

  @override
  FieldReflection<PagamentoSistemaEndpoint, T>? field<T>(String fieldName,
          [PagamentoSistemaEndpoint? obj]) =>
      null;

  @override
  Map<String, dynamic> getFieldsValues(PagamentoSistemaEndpoint? obj,
          {bool withHashCode = false}) =>
      {
        if (withHashCode) 'hashCode': obj?.hashCode,
      };

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<PagamentoSistemaEndpoint, T>? staticField<T>(
          String fieldName) =>
      null;

  static const List<String> _methodsNames = const <String>[
    'addPagamentoSistema',
    'finalizarPagamentoSistema',
    'getRouter',
    'reflect'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<PagamentoSistemaEndpoint, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<PagamentoSistemaEndpoint, dynamic>>
      _methodsObject = {};

  @override
  MethodReflection<PagamentoSistemaEndpoint, R>? method<R>(String methodName,
      [PagamentoSistemaEndpoint? obj]) {
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

  MethodReflection<PagamentoSistemaEndpoint, R>? _methodNoObjectImpl<R>(
      String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<PagamentoSistemaEndpoint, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<PagamentoSistemaEndpoint, R>;
  }

  MethodReflection<PagamentoSistemaEndpoint, R>? _methodObjectImpl<R>(
      String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<PagamentoSistemaEndpoint, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<PagamentoSistemaEndpoint, dynamic>? _methodImpl(
      String methodName, PagamentoSistemaEndpoint? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'addpagamentosistema':
        return MethodReflection<PagamentoSistemaEndpoint, Future<Response>>(
            this,
            PagamentoSistemaEndpoint,
            'addPagamentoSistema',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.addPagamentoSistema,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/addPagamentoSistema')]);
      case 'finalizarpagamentosistema':
        return MethodReflection<PagamentoSistemaEndpoint, Future<Response>>(
            this,
            PagamentoSistemaEndpoint,
            'finalizarPagamentoSistema',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.finalizarPagamentoSistema,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/finalizarPagamentoSistema')]);
      case 'getrouter':
        return MethodReflection<PagamentoSistemaEndpoint, Router>(
            this,
            PagamentoSistemaEndpoint,
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
        return MethodReflection<PagamentoSistemaEndpoint,
                ClassReflection<dynamic>>(
            this,
            PagamentoSistemaEndpoint,
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
  StaticMethodReflection<PagamentoSistemaEndpoint, R>? staticMethod<R>(
          String methodName) =>
      null;
}

extension PagamentoSistemaEndpoint$reflectionExtension
    on PagamentoSistemaEndpoint {
  /// Returns a [ClassReflection] for type [PagamentoSistemaEndpoint]. (Generated by [ReflectionFactory])
  ClassReflection<PagamentoSistemaEndpoint> get reflection =>
      PagamentoSistemaEndpoint$reflection(this);

  /// Returns a JSON for type [PagamentoSistemaEndpoint]. (Generated by [ReflectionFactory])
  Object? toJson({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJson(null, null, duplicatedEntitiesAsID);

  /// Returns a JSON [Map] for type [PagamentoSistemaEndpoint]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [PagamentoSistemaEndpoint]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [PagamentoSistemaEndpoint] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      PagamentoSistemaEndpoint$reflection(),
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
