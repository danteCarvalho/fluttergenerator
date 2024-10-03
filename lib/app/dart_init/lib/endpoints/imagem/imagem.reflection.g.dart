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

part of 'imagem.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.4.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
ImagemEndpoint ImagemEndpoint$fromJson(Map<String, Object?> map) =>
    ImagemEndpoint$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
ImagemEndpoint ImagemEndpoint$fromJsonEncoded(String jsonEncoded) =>
    ImagemEndpoint$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class ImagemEndpoint$reflection extends ClassReflection<ImagemEndpoint>
    with __ReflectionMixin {
  static final Expando<ImagemEndpoint$reflection> _objectReflections =
      Expando();

  factory ImagemEndpoint$reflection([ImagemEndpoint? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= ImagemEndpoint$reflection._(object);
  }

  ImagemEndpoint$reflection._([ImagemEndpoint? object])
      : super(ImagemEndpoint, r'ImagemEndpoint', object);

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
  ImagemEndpoint$reflection withObject([ImagemEndpoint? obj]) =>
      ImagemEndpoint$reflection(obj)..setupInternalsWith(this);

  static ImagemEndpoint$reflection? _withoutObjectInstance;
  @override
  ImagemEndpoint$reflection withoutObjectInstance() => staticInstance;

  static ImagemEndpoint$reflection get staticInstance =>
      _withoutObjectInstance ??= ImagemEndpoint$reflection._();

  @override
  ImagemEndpoint$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    ImagemEndpoint$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  ImagemEndpoint? createInstanceWithDefaultConstructor() => ImagemEndpoint();

  @override
  bool get hasEmptyConstructor => false;
  @override
  ImagemEndpoint? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  ImagemEndpoint? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<ImagemEndpoint>>
      _constructors = {};

  @override
  ConstructorReflection<ImagemEndpoint>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<ImagemEndpoint>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<ImagemEndpoint>(this, ImagemEndpoint, '',
            () => () => ImagemEndpoint(), null, null, null, null);
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
  Object? callMethodToJson([ImagemEndpoint? obj]) => null;

  static const List<String> _fieldsNames = const <String>[];

  @override
  List<String> get fieldsNames => _fieldsNames;

  @override
  FieldReflection<ImagemEndpoint, T>? field<T>(String fieldName,
          [ImagemEndpoint? obj]) =>
      null;

  @override
  Map<String, dynamic> getFieldsValues(ImagemEndpoint? obj,
          {bool withHashCode = false}) =>
      {
        if (withHashCode) 'hashCode': obj?.hashCode,
      };

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<ImagemEndpoint, T>? staticField<T>(String fieldName) =>
      null;

  static const List<String> _methodsNames = const <String>[
    'addImagem',
    'editImagem',
    'getImagem',
    'getRouter',
    'reflect'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<ImagemEndpoint, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<ImagemEndpoint, dynamic>> _methodsObject =
      {};

  @override
  MethodReflection<ImagemEndpoint, R>? method<R>(String methodName,
      [ImagemEndpoint? obj]) {
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

  MethodReflection<ImagemEndpoint, R>? _methodNoObjectImpl<R>(
      String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<ImagemEndpoint, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<ImagemEndpoint, R>;
  }

  MethodReflection<ImagemEndpoint, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<ImagemEndpoint, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<ImagemEndpoint, dynamic>? _methodImpl(
      String methodName, ImagemEndpoint? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'addimagem':
        return MethodReflection<ImagemEndpoint, Future<Response>>(
            this,
            ImagemEndpoint,
            'addImagem',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.addImagem,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [
              Route.post('/addImagem'),
              RouterMethodAnnotation(authorization: true)
            ]);
      case 'editimagem':
        return MethodReflection<ImagemEndpoint, Future<Response>>(
            this,
            ImagemEndpoint,
            'editImagem',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.editImagem,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [
              Route.post('/editImagem'),
              RouterMethodAnnotation(authorization: true)
            ]);
      case 'getimagem':
        return MethodReflection<ImagemEndpoint, Future<Response>>(
            this,
            ImagemEndpoint,
            'getImagem',
            __TR<Future<Response>>(Future, <__TR>[__TR<Response>(Response)]),
            false,
            (o) => o!.getImagem,
            obj,
            const <__PR>[__PR(__TR<Request>(Request), 'request', false, true)],
            null,
            null,
            const [Route.get('/getImagem')]);
      case 'getrouter':
        return MethodReflection<ImagemEndpoint, Router>(
            this,
            ImagemEndpoint,
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
        return MethodReflection<ImagemEndpoint, ClassReflection<dynamic>>(
            this,
            ImagemEndpoint,
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
  StaticMethodReflection<ImagemEndpoint, R>? staticMethod<R>(
          String methodName) =>
      null;
}

extension ImagemEndpoint$reflectionExtension on ImagemEndpoint {
  /// Returns a [ClassReflection] for type [ImagemEndpoint]. (Generated by [ReflectionFactory])
  ClassReflection<ImagemEndpoint> get reflection =>
      ImagemEndpoint$reflection(this);

  /// Returns a JSON for type [ImagemEndpoint]. (Generated by [ReflectionFactory])
  Object? toJson({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJson(null, null, duplicatedEntitiesAsID);

  /// Returns a JSON [Map] for type [ImagemEndpoint]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [ImagemEndpoint]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [ImagemEndpoint] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      ImagemEndpoint$reflection(),
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
