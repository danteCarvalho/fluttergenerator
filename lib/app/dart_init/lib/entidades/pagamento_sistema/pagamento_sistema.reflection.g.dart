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

part of 'pagamento_sistema.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.2.8');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
PagamentoSistema PagamentoSistema$fromJson(Map<String, Object?> map) =>
    PagamentoSistema$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
PagamentoSistema PagamentoSistema$fromJsonEncoded(String jsonEncoded) =>
    PagamentoSistema$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class PagamentoSistema$reflection extends ClassReflection<PagamentoSistema>
    with __ReflectionMixin {
  static final Expando<PagamentoSistema$reflection> _objectReflections =
      Expando();

  factory PagamentoSistema$reflection([PagamentoSistema? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= PagamentoSistema$reflection._(object);
  }

  PagamentoSistema$reflection._([PagamentoSistema? object])
      : super(PagamentoSistema, 'PagamentoSistema', object);

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
  PagamentoSistema$reflection withObject([PagamentoSistema? obj]) =>
      PagamentoSistema$reflection(obj)..setupInternalsWith(this);

  static PagamentoSistema$reflection? _withoutObjectInstance;
  @override
  PagamentoSistema$reflection withoutObjectInstance() => staticInstance;

  static PagamentoSistema$reflection get staticInstance =>
      _withoutObjectInstance ??= PagamentoSistema$reflection._();

  @override
  PagamentoSistema$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    PagamentoSistema$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  PagamentoSistema? createInstanceWithDefaultConstructor() =>
      PagamentoSistema();

  @override
  bool get hasEmptyConstructor => false;
  @override
  PagamentoSistema? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  PagamentoSistema? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<PagamentoSistema>>
      _constructors = <String, ConstructorReflection<PagamentoSistema>>{};

  @override
  ConstructorReflection<PagamentoSistema>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<PagamentoSistema>? _constructorImpl(
      String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<PagamentoSistema>(this, PagamentoSistema,
            '', () => () => PagamentoSistema(), null, null, null, null);
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
  Object? callMethodToJson([PagamentoSistema? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  static const List<String> _fieldsNames = const <String>[
    'ativa',
    'dataConfirmado',
    'dataCriacao',
    'dataDelecao',
    'dataEdicao',
    'empresa',
    'id',
    'id2',
    'link',
    'pago',
    'qrCode',
    'referencia',
    'usuario',
    'valor'
  ];

  @override
  List<String> get fieldsNames => _fieldsNames;

  static final Map<String, FieldReflection<PagamentoSistema, dynamic>>
      _fieldsNoObject = <String, FieldReflection<PagamentoSistema, dynamic>>{};

  final Map<String, FieldReflection<PagamentoSistema, dynamic>> _fieldsObject =
      <String, FieldReflection<PagamentoSistema, dynamic>>{};

  @override
  FieldReflection<PagamentoSistema, T>? field<T>(String fieldName,
      [PagamentoSistema? obj]) {
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

  FieldReflection<PagamentoSistema, T>? _fieldNoObjectImpl<T>(
      String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<PagamentoSistema, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<PagamentoSistema, T>;
  }

  FieldReflection<PagamentoSistema, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<PagamentoSistema, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<PagamentoSistema, dynamic>? _fieldImpl(
      String fieldName, PagamentoSistema? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'referencia':
        return FieldReflection<PagamentoSistema, String?>(
          this,
          PagamentoSistema,
          __TR.tString,
          'referencia',
          true,
          (o) => () => o!.referencia,
          (o) => (v) => o!.referencia = v,
          obj,
          false,
          false,
          const [Coluna(nullable: false)],
        );
      case 'qrcode':
        return FieldReflection<PagamentoSistema, String?>(
          this,
          PagamentoSistema,
          __TR.tString,
          'qrCode',
          true,
          (o) => () => o!.qrCode,
          (o) => (v) => o!.qrCode = v,
          obj,
          false,
          false,
        );
      case 'pago':
        return FieldReflection<PagamentoSistema, bool?>(
          this,
          PagamentoSistema,
          __TR.tBool,
          'pago',
          true,
          (o) => () => o!.pago,
          (o) => (v) => o!.pago = v,
          obj,
          false,
          false,
        );
      case 'dataconfirmado':
        return FieldReflection<PagamentoSistema, DateTime?>(
          this,
          PagamentoSistema,
          __TR<DateTime>(DateTime),
          'dataConfirmado',
          true,
          (o) => () => o!.dataConfirmado,
          (o) => (v) => o!.dataConfirmado = v,
          obj,
          false,
          false,
        );
      case 'link':
        return FieldReflection<PagamentoSistema, String?>(
          this,
          PagamentoSistema,
          __TR.tString,
          'link',
          true,
          (o) => () => o!.link,
          (o) => (v) => o!.link = v,
          obj,
          false,
          false,
        );
      case 'empresa':
        return FieldReflection<PagamentoSistema, Empresa?>(
          this,
          PagamentoSistema,
          __TR<Empresa>(Empresa),
          'empresa',
          true,
          (o) => () => o!.empresa,
          (o) => (v) => o!.empresa = v,
          obj,
          false,
          false,
        );
      case 'usuario':
        return FieldReflection<PagamentoSistema, Usuario?>(
          this,
          PagamentoSistema,
          __TR<Usuario>(Usuario),
          'usuario',
          true,
          (o) => () => o!.usuario,
          (o) => (v) => o!.usuario = v,
          obj,
          false,
          false,
        );
      case 'valor':
        return FieldReflection<PagamentoSistema, double?>(
          this,
          PagamentoSistema,
          __TR.tDouble,
          'valor',
          true,
          (o) => () => o!.valor,
          (o) => (v) => o!.valor = v,
          obj,
          false,
          false,
          const [Coluna(nullable: false)],
        );
      case 'id':
        return FieldReflection<PagamentoSistema, String?>(
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
        return FieldReflection<PagamentoSistema, int?>(
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
        return FieldReflection<PagamentoSistema, bool?>(
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
        return FieldReflection<PagamentoSistema, DateTime?>(
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
        return FieldReflection<PagamentoSistema, DateTime?>(
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
        return FieldReflection<PagamentoSistema, DateTime?>(
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
  FieldReflection<PagamentoSistema, T>? staticField<T>(String fieldName) =>
      null;

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

  static final Map<String, MethodReflection<PagamentoSistema, dynamic>>
      _methodsNoObject =
      <String, MethodReflection<PagamentoSistema, dynamic>>{};

  final Map<String, MethodReflection<PagamentoSistema, dynamic>>
      _methodsObject = <String, MethodReflection<PagamentoSistema, dynamic>>{};

  @override
  MethodReflection<PagamentoSistema, R>? method<R>(String methodName,
      [PagamentoSistema? obj]) {
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

  MethodReflection<PagamentoSistema, R>? _methodNoObjectImpl<R>(
      String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<PagamentoSistema, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<PagamentoSistema, R>;
  }

  MethodReflection<PagamentoSistema, R>? _methodObjectImpl<R>(
      String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<PagamentoSistema, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<PagamentoSistema, dynamic>? _methodImpl(
      String methodName, PagamentoSistema? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'reflect':
        return MethodReflection<PagamentoSistema, ClassReflection<dynamic>>(
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
        return MethodReflection<PagamentoSistema, Map<String, dynamic>>(
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
        return MethodReflection<PagamentoSistema, Map<String, dynamic>>(
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
        return MethodReflection<PagamentoSistema, Map<String, dynamic>>(
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
        return MethodReflection<PagamentoSistema, String>(
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
        return MethodReflection<PagamentoSistema, String>(
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
        return MethodReflection<PagamentoSistema, dynamic>(
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
        return MethodReflection<PagamentoSistema, dynamic>(
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
        return MethodReflection<PagamentoSistema, List<dynamic>>(
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
        return MethodReflection<PagamentoSistema, List<dynamic>>(
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

  static final Map<String, MethodReflection<PagamentoSistema, dynamic>>
      _staticMethods = <String, MethodReflection<PagamentoSistema, dynamic>>{};

  @override
  MethodReflection<PagamentoSistema, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as MethodReflection<PagamentoSistema, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as MethodReflection<PagamentoSistema, R>;
  }

  MethodReflection<PagamentoSistema, dynamic>? _staticMethodImpl(
      String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<PagamentoSistema, PagamentoSistema>(
            this,
            PagamentoSistema,
            'fromJson',
            __TR<PagamentoSistema>(PagamentoSistema),
            false,
            (o) => PagamentoSistema.fromJson,
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

extension PagamentoSistema$reflectionExtension on PagamentoSistema {
  /// Returns a [ClassReflection] for type [PagamentoSistema]. (Generated by [ReflectionFactory])
  ClassReflection<PagamentoSistema> get reflection =>
      PagamentoSistema$reflection(this);

  /// Returns a JSON [Map] for type [PagamentoSistema]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [PagamentoSistema]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [PagamentoSistema] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      PagamentoSistema$reflection(),
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
