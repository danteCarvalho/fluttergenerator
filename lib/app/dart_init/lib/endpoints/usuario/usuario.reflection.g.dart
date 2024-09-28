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

part of 'usuario.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.4.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
UsuarioEndpoint UsuarioEndpoint$fromJson(Map<String, Object?> map) =>
    UsuarioEndpoint$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
UsuarioEndpoint UsuarioEndpoint$fromJsonEncoded(String jsonEncoded) =>
    UsuarioEndpoint$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class UsuarioEndpoint$reflection extends ClassReflection<UsuarioEndpoint>
    with __ReflectionMixin {
  static final Expando<UsuarioEndpoint$reflection> _objectReflections =
      Expando();

  factory UsuarioEndpoint$reflection([UsuarioEndpoint? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= UsuarioEndpoint$reflection._(object);
  }

  UsuarioEndpoint$reflection._([UsuarioEndpoint? object])
      : super(UsuarioEndpoint, r'UsuarioEndpoint', object);

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
  UsuarioEndpoint$reflection withObject([UsuarioEndpoint? obj]) =>
      UsuarioEndpoint$reflection(obj)..setupInternalsWith(this);

  static UsuarioEndpoint$reflection? _withoutObjectInstance;
  @override
  UsuarioEndpoint$reflection withoutObjectInstance() => staticInstance;

  static UsuarioEndpoint$reflection get staticInstance =>
      _withoutObjectInstance ??= UsuarioEndpoint$reflection._();

  @override
  UsuarioEndpoint$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    UsuarioEndpoint$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  UsuarioEndpoint? createInstanceWithDefaultConstructor() => UsuarioEndpoint();

  @override
  bool get hasEmptyConstructor => false;
  @override
  UsuarioEndpoint? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  UsuarioEndpoint? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<UsuarioEndpoint>>
      _constructors = {};

  @override
  ConstructorReflection<UsuarioEndpoint>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<UsuarioEndpoint>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<UsuarioEndpoint>(this, UsuarioEndpoint, '',
            () => () => UsuarioEndpoint(), null, null, null, null);
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
  Object? callMethodToJson([UsuarioEndpoint? obj]) => null;

  static const List<String> _fieldsNames = const <String>[];

  @override
  List<String> get fieldsNames => _fieldsNames;

  @override
  FieldReflection<UsuarioEndpoint, T>? field<T>(String fieldName,
          [UsuarioEndpoint? obj]) =>
      null;

  @override
  Map<String, dynamic> getFieldsValues(UsuarioEndpoint? obj,
          {bool withHashCode = false}) =>
      {
        if (withHashCode) 'hashCode': obj?.hashCode,
      };

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<UsuarioEndpoint, T>? staticField<T>(String fieldName) =>
      null;

  static const List<String> _methodsNames = const <String>[
    'addUsuario',
    'buildMessage',
    'editUsuario',
    'enviarEmail',
    'esqueciSenha',
    'esqueciSenha2',
    'getRouter',
    'reflect',
    'verificaEmail',
    'verificaEmail2'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<UsuarioEndpoint, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<UsuarioEndpoint, dynamic>> _methodsObject =
      {};

  @override
  MethodReflection<UsuarioEndpoint, R>? method<R>(String methodName,
      [UsuarioEndpoint? obj]) {
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

  MethodReflection<UsuarioEndpoint, R>? _methodNoObjectImpl<R>(
      String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<UsuarioEndpoint, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<UsuarioEndpoint, R>;
  }

  MethodReflection<UsuarioEndpoint, R>? _methodObjectImpl<R>(
      String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<UsuarioEndpoint, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<UsuarioEndpoint, dynamic>? _methodImpl(
      String methodName, UsuarioEndpoint? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'addusuario':
        return MethodReflection<UsuarioEndpoint, Future<Response>>(
            this,
            UsuarioEndpoint,
            'addUsuario',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.addUsuario,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/addUsuario')]);
      case 'editusuario':
        return MethodReflection<UsuarioEndpoint, Future<Response>>(
            this,
            UsuarioEndpoint,
            'editUsuario',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.editUsuario,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/editUsuario')]);
      case 'verificaemail':
        return MethodReflection<UsuarioEndpoint, Future<Response>>(
            this,
            UsuarioEndpoint,
            'verificaEmail',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.verificaEmail,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/verificaEmail')]);
      case 'verificaemail2':
        return MethodReflection<UsuarioEndpoint, Future<Response>>(
            this,
            UsuarioEndpoint,
            'verificaEmail2',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.verificaEmail2,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/verificaEmail2')]);
      case 'buildmessage':
        return MethodReflection<UsuarioEndpoint, Message>(
            this,
            UsuarioEndpoint,
            'buildMessage',
            __TR<Message>(Message),
            false,
            (o) => o!.buildMessage,
            obj,
            const <__PR>[
              __PR(__TR.tString, 'msg', false, true),
              __PR(__TR.tString, 'to', false, true),
              __PR(__TR.tString, 'subject', false, true)
            ],
            null,
            null,
            null);
      case 'enviaremail':
        return MethodReflection<UsuarioEndpoint, dynamic>(
            this,
            UsuarioEndpoint,
            'enviarEmail',
            __TR.tDynamic,
            false,
            (o) => o!.enviarEmail,
            obj,
            const <__PR>[__PR(__TR<Message>(Message), 'message', false, true)],
            null,
            null,
            null);
      case 'esquecisenha':
        return MethodReflection<UsuarioEndpoint, Future<Response>>(
            this,
            UsuarioEndpoint,
            'esqueciSenha',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.esqueciSenha,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/esqueciSenha')]);
      case 'esquecisenha2':
        return MethodReflection<UsuarioEndpoint, Future<Response>>(
            this,
            UsuarioEndpoint,
            'esqueciSenha2',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.esqueciSenha2,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.post('/esqueciSenha2')]);
      case 'getrouter':
        return MethodReflection<UsuarioEndpoint, Router>(
            this,
            UsuarioEndpoint,
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
        return MethodReflection<UsuarioEndpoint, ClassReflection<dynamic>>(
            this,
            UsuarioEndpoint,
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
  StaticMethodReflection<UsuarioEndpoint, R>? staticMethod<R>(
          String methodName) =>
      null;
}

extension UsuarioEndpoint$reflectionExtension on UsuarioEndpoint {
  /// Returns a [ClassReflection] for type [UsuarioEndpoint]. (Generated by [ReflectionFactory])
  ClassReflection<UsuarioEndpoint> get reflection =>
      UsuarioEndpoint$reflection(this);

  /// Returns a JSON for type [UsuarioEndpoint]. (Generated by [ReflectionFactory])
  Object? toJson({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJson(null, null, duplicatedEntitiesAsID);

  /// Returns a JSON [Map] for type [UsuarioEndpoint]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [UsuarioEndpoint]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [UsuarioEndpoint] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      UsuarioEndpoint$reflection(),
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
