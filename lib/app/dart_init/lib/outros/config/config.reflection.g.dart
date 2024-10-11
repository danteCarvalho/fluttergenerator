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

part of 'config.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.4.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
Config Config$fromJson(Map<String, Object?> map) =>
    Config$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Config Config$fromJsonEncoded(String jsonEncoded) =>
    Config$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Config$reflection extends ClassReflection<Config> with __ReflectionMixin {
  static final Expando<Config$reflection> _objectReflections = Expando();

  factory Config$reflection([Config? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= Config$reflection._(object);
  }

  Config$reflection._([Config? object]) : super(Config, r'Config', object);

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
  Config$reflection withObject([Config? obj]) =>
      Config$reflection(obj)..setupInternalsWith(this);

  static Config$reflection? _withoutObjectInstance;
  @override
  Config$reflection withoutObjectInstance() => staticInstance;

  static Config$reflection get staticInstance =>
      _withoutObjectInstance ??= Config$reflection._();

  @override
  Config$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Config$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Config? createInstanceWithDefaultConstructor() => Config();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Config? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Config? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<Config>> _constructors = {};

  @override
  ConstructorReflection<Config>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<Config>? _constructorImpl(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Config>(
            this, Config, '', () => () => Config(), null, null, null, null);
      default:
        return null;
    }
  }

  static const List<Object> _classAnnotations = const [
    reflector,
    SerialAnnotation()
  ];

  @override
  List<Object> get classAnnotations => _classAnnotations;

  static const List<Type> _supperTypes = const <Type>[_$Serial];

  @override
  List<Type> get supperTypes => _supperTypes;

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Config? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  static const List<String> _fieldsNames = const <String>[
    'arquivoConf',
    'banco',
    'email',
    'emailPassword',
    'emailServer',
    'googleClientIdOS',
    'googleSecretOS',
    'googleSecretWeb',
    'hasuraAdminSecret',
    'hasuraSharedSecret',
    'hasuraSource',
    'hasuraSufix',
    'imageAccessKey',
    'imageSecretKey',
    'imageStorage',
    'ipBanco',
    'ipHasura',
    'portaBanco',
    'portaHasura',
    'portaServidor',
    'schemeHasura',
    'sembastDbName',
    'senha',
    'sslBanco',
    'usuario'
  ];

  @override
  List<String> get fieldsNames => _fieldsNames;

  static final Map<String, FieldReflection<Config, dynamic>> _fieldsNoObject =
      {};

  final Map<String, FieldReflection<Config, dynamic>> _fieldsObject = {};

  @override
  FieldReflection<Config, T>? field<T>(String fieldName, [Config? obj]) {
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

  FieldReflection<Config, T>? _fieldNoObjectImpl<T>(String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Config, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<Config, T>;
  }

  FieldReflection<Config, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Config, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<Config, dynamic>? _fieldImpl(String fieldName, Config? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'arquivoconf':
        return FieldReflection<Config, bool>(
          this,
          Config,
          __TR.tBool,
          'arquivoConf',
          false,
          (o) => () => o!.arquivoConf,
          (o) => (v) => o!.arquivoConf = v,
          obj,
          false,
        );
      case 'portaservidor':
        return FieldReflection<Config, int>(
          this,
          Config,
          __TR.tInt,
          'portaServidor',
          false,
          (o) => () => o!.portaServidor,
          (o) => (v) => o!.portaServidor = v,
          obj,
          false,
        );
      case 'sembastdbname':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'sembastDbName',
          false,
          (o) => () => o!.sembastDbName,
          (o) => (v) => o!.sembastDbName = v,
          obj,
          false,
        );
      case 'sslbanco':
        return FieldReflection<Config, bool>(
          this,
          Config,
          __TR.tBool,
          'sslBanco',
          false,
          (o) => () => o!.sslBanco,
          (o) => (v) => o!.sslBanco = v,
          obj,
          false,
        );
      case 'ipbanco':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'ipBanco',
          false,
          (o) => () => o!.ipBanco,
          (o) => (v) => o!.ipBanco = v,
          obj,
          false,
        );
      case 'portabanco':
        return FieldReflection<Config, int>(
          this,
          Config,
          __TR.tInt,
          'portaBanco',
          false,
          (o) => () => o!.portaBanco,
          (o) => (v) => o!.portaBanco = v,
          obj,
          false,
        );
      case 'banco':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'banco',
          false,
          (o) => () => o!.banco,
          (o) => (v) => o!.banco = v,
          obj,
          false,
        );
      case 'usuario':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'usuario',
          false,
          (o) => () => o!.usuario,
          (o) => (v) => o!.usuario = v,
          obj,
          false,
        );
      case 'senha':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'senha',
          false,
          (o) => () => o!.senha,
          (o) => (v) => o!.senha = v,
          obj,
          false,
        );
      case 'schemehasura':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'schemeHasura',
          false,
          (o) => () => o!.schemeHasura,
          (o) => (v) => o!.schemeHasura = v,
          obj,
          false,
        );
      case 'iphasura':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'ipHasura',
          false,
          (o) => () => o!.ipHasura,
          (o) => (v) => o!.ipHasura = v,
          obj,
          false,
        );
      case 'portahasura':
        return FieldReflection<Config, int>(
          this,
          Config,
          __TR.tInt,
          'portaHasura',
          false,
          (o) => () => o!.portaHasura,
          (o) => (v) => o!.portaHasura = v,
          obj,
          false,
        );
      case 'hasurasource':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'hasuraSource',
          false,
          (o) => () => o!.hasuraSource,
          (o) => (v) => o!.hasuraSource = v,
          obj,
          false,
        );
      case 'hasurasufix':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'hasuraSufix',
          false,
          (o) => () => o!.hasuraSufix,
          (o) => (v) => o!.hasuraSufix = v,
          obj,
          false,
        );
      case 'hasurasharedsecret':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'hasuraSharedSecret',
          false,
          (o) => () => o!.hasuraSharedSecret,
          (o) => (v) => o!.hasuraSharedSecret = v,
          obj,
          false,
        );
      case 'hasuraadminsecret':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'hasuraAdminSecret',
          false,
          (o) => () => o!.hasuraAdminSecret,
          (o) => (v) => o!.hasuraAdminSecret = v,
          obj,
          false,
        );
      case 'googlesecretweb':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'googleSecretWeb',
          false,
          (o) => () => o!.googleSecretWeb,
          (o) => (v) => o!.googleSecretWeb = v,
          obj,
          false,
        );
      case 'googlesecretos':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'googleSecretOS',
          false,
          (o) => () => o!.googleSecretOS,
          (o) => (v) => o!.googleSecretOS = v,
          obj,
          false,
        );
      case 'googleclientidos':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'googleClientIdOS',
          false,
          (o) => () => o!.googleClientIdOS,
          (o) => (v) => o!.googleClientIdOS = v,
          obj,
          false,
        );
      case 'imagestorage':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'imageStorage',
          false,
          (o) => () => o!.imageStorage,
          (o) => (v) => o!.imageStorage = v,
          obj,
          false,
        );
      case 'imageaccesskey':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'imageAccessKey',
          false,
          (o) => () => o!.imageAccessKey,
          (o) => (v) => o!.imageAccessKey = v,
          obj,
          false,
        );
      case 'imagesecretkey':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'imageSecretKey',
          false,
          (o) => () => o!.imageSecretKey,
          (o) => (v) => o!.imageSecretKey = v,
          obj,
          false,
        );
      case 'emailserver':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'emailServer',
          false,
          (o) => () => o!.emailServer,
          (o) => (v) => o!.emailServer = v,
          obj,
          false,
        );
      case 'email':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'email',
          false,
          (o) => () => o!.email,
          (o) => (v) => o!.email = v,
          obj,
          false,
        );
      case 'emailpassword':
        return FieldReflection<Config, String>(
          this,
          Config,
          __TR.tString,
          'emailPassword',
          false,
          (o) => () => o!.emailPassword,
          (o) => (v) => o!.emailPassword = v,
          obj,
          false,
        );
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> getFieldsValues(Config? obj,
      {bool withHashCode = false}) {
    obj ??= object;
    return <String, dynamic>{
      'arquivoConf': obj?.arquivoConf,
      'portaServidor': obj?.portaServidor,
      'sembastDbName': obj?.sembastDbName,
      'sslBanco': obj?.sslBanco,
      'ipBanco': obj?.ipBanco,
      'portaBanco': obj?.portaBanco,
      'banco': obj?.banco,
      'usuario': obj?.usuario,
      'senha': obj?.senha,
      'schemeHasura': obj?.schemeHasura,
      'ipHasura': obj?.ipHasura,
      'portaHasura': obj?.portaHasura,
      'hasuraSource': obj?.hasuraSource,
      'hasuraSufix': obj?.hasuraSufix,
      'hasuraSharedSecret': obj?.hasuraSharedSecret,
      'hasuraAdminSecret': obj?.hasuraAdminSecret,
      'googleSecretWeb': obj?.googleSecretWeb,
      'googleSecretOS': obj?.googleSecretOS,
      'googleClientIdOS': obj?.googleClientIdOS,
      'imageStorage': obj?.imageStorage,
      'imageAccessKey': obj?.imageAccessKey,
      'imageSecretKey': obj?.imageSecretKey,
      'emailServer': obj?.emailServer,
      'email': obj?.email,
      'emailPassword': obj?.emailPassword,
      if (withHashCode) 'hashCode': obj?.hashCode,
    };
  }

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<Config, T>? staticField<T>(String fieldName) => null;

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

  static final Map<String, MethodReflection<Config, dynamic>> _methodsNoObject =
      {};

  final Map<String, MethodReflection<Config, dynamic>> _methodsObject = {};

  @override
  MethodReflection<Config, R>? method<R>(String methodName, [Config? obj]) {
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

  MethodReflection<Config, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<Config, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<Config, R>;
  }

  MethodReflection<Config, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<Config, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<Config, dynamic>? _methodImpl(
      String methodName, Config? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<Config, Map<String, dynamic>>(
            this,
            _$Serial,
            'classToMap',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.classToMap,
            obj,
            null,
            null,
            null,
            null);
      case 'tojson':
        return MethodReflection<Config, Map<String, dynamic>>(
            this,
            _$Serial,
            'toJson',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.toJson,
            obj,
            null,
            null,
            null,
            null);
      case 'classtostring':
        return MethodReflection<Config, String>(
            this,
            _$Serial,
            'classToString',
            __TR.tString,
            false,
            (o) => o!.classToString,
            obj,
            null,
            null,
            null,
            null);
      case 'listclasstostring':
        return MethodReflection<Config, String>(
            this,
            _$Serial,
            'listClassToString',
            __TR.tString,
            false,
            (o) => o!.listClassToString,
            obj,
            const <__PR>[__PR(__TR.tListDynamic, 'list', false, true)],
            null,
            null,
            null);
      case 'dbmaptoclassmap':
        return MethodReflection<Config, Map<String, dynamic>>(
            this,
            _$Serial,
            'dbMaptoClassMap',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.dbMaptoClassMap,
            obj,
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
      case 'stringtoclass':
        return MethodReflection<Config, Config>(
            this,
            _$Serial,
            'stringToClass',
            __TR<Config>(Config),
            false,
            (o) => o!.stringToClass,
            obj,
            const <__PR>[__PR(__TR.tString, 'string', false, true)],
            null,
            null,
            null);
      case 'maptoclass':
        return MethodReflection<Config, Config>(
            this,
            _$Serial,
            'mapToClass',
            __TR<Config>(Config),
            false,
            (o) => o!.mapToClass,
            obj,
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
        return MethodReflection<Config, List<Config>>(
            this,
            _$Serial,
            'listMapToListClass',
            __TR<List<Config>>(List, <__TR>[__TR<Config>(Config)]),
            false,
            (o) => o!.listMapToListClass,
            obj,
            const <__PR>[__PR(__TR.tListDynamic, 'list', false, true)],
            null,
            null,
            null);
      case 'liststringtolistclass':
        return MethodReflection<Config, List<Config>>(
            this,
            _$Serial,
            'listStringToListClass',
            __TR<List<Config>>(List, <__TR>[__TR<Config>(Config)]),
            false,
            (o) => o!.listStringToListClass,
            obj,
            const <__PR>[__PR(__TR.tString, 'listString', false, true)],
            null,
            null,
            null);
      case 'reflect':
        return MethodReflection<Config, ClassReflection<Config>>(
            this,
            _$Serial,
            'reflect',
            __TR<ClassReflection<Config>>(
                ClassReflection, <__TR>[__TR<Config>(Config)]),
            false,
            (o) => o!.reflect,
            obj,
            null,
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

  static final Map<String, StaticMethodReflection<Config, dynamic>>
      _staticMethods = {};

  @override
  StaticMethodReflection<Config, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as StaticMethodReflection<Config, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as StaticMethodReflection<Config, R>;
  }

  StaticMethodReflection<Config, dynamic>? _staticMethodImpl(
      String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return StaticMethodReflection<Config, dynamic>(
            this,
            Config,
            'fromJson',
            __TR.tDynamic,
            false,
            () => Config.fromJson,
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

extension Config$reflectionExtension on Config {
  /// Returns a [ClassReflection] for type [Config]. (Generated by [ReflectionFactory])
  ClassReflection<Config> get reflection => Config$reflection(this);

  /// Returns a JSON [Map] for type [Config]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Config]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Config] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Config$reflection(),
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
