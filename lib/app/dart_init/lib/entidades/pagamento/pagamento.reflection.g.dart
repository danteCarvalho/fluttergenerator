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

part of 'pagamento.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.4.4');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
Pagamento Pagamento$fromJson(Map<String, Object?> map) =>
    Pagamento$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Pagamento Pagamento$fromJsonEncoded(String jsonEncoded) =>
    Pagamento$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Pagamento$reflection extends ClassReflection<Pagamento>
    with __ReflectionMixin {
  static final Expando<Pagamento$reflection> _objectReflections = Expando();

  factory Pagamento$reflection([Pagamento? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= Pagamento$reflection._(object);
  }

  Pagamento$reflection._([Pagamento? object])
      : super(Pagamento, r'Pagamento', object);

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
  Pagamento$reflection withObject([Pagamento? obj]) =>
      Pagamento$reflection(obj)..setupInternalsWith(this);

  static Pagamento$reflection? _withoutObjectInstance;
  @override
  Pagamento$reflection withoutObjectInstance() => staticInstance;

  static Pagamento$reflection get staticInstance =>
      _withoutObjectInstance ??= Pagamento$reflection._();

  @override
  Pagamento$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Pagamento$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Pagamento? createInstanceWithDefaultConstructor() => Pagamento();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Pagamento? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Pagamento? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<Pagamento>> _constructors = {};

  @override
  ConstructorReflection<Pagamento>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<Pagamento>? _constructorImpl(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Pagamento>(this, Pagamento, '',
            () => () => Pagamento(), null, null, null, null);
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
  Object? callMethodToJson([Pagamento? obj]) {
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

  static final Map<String, FieldReflection<Pagamento, dynamic>>
      _fieldsNoObject = {};

  final Map<String, FieldReflection<Pagamento, dynamic>> _fieldsObject = {};

  @override
  FieldReflection<Pagamento, T>? field<T>(String fieldName, [Pagamento? obj]) {
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

  FieldReflection<Pagamento, T>? _fieldNoObjectImpl<T>(String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Pagamento, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<Pagamento, T>;
  }

  FieldReflection<Pagamento, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Pagamento, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<Pagamento, dynamic>? _fieldImpl(
      String fieldName, Pagamento? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'referencia':
        return FieldReflection<Pagamento, String>(
          this,
          Pagamento,
          __TR.tString,
          'referencia',
          false,
          (o) => () => o!.referencia,
          (o) => (v) => o!.referencia = v,
          obj,
          false,
          const [Coluna(nullable: false)],
        );
      case 'qrcode':
        return FieldReflection<Pagamento, String>(
          this,
          Pagamento,
          __TR.tString,
          'qrCode',
          false,
          (o) => () => o!.qrCode,
          (o) => (v) => o!.qrCode = v,
          obj,
          false,
        );
      case 'pago':
        return FieldReflection<Pagamento, bool>(
          this,
          Pagamento,
          __TR.tBool,
          'pago',
          false,
          (o) => () => o!.pago,
          (o) => (v) => o!.pago = v,
          obj,
          false,
        );
      case 'dataconfirmado':
        return FieldReflection<Pagamento, DateTime>(
          this,
          Pagamento,
          __TR<DateTime>(DateTime),
          'dataConfirmado',
          false,
          (o) => () => o!.dataConfirmado,
          (o) => (v) => o!.dataConfirmado = v,
          obj,
          false,
        );
      case 'link':
        return FieldReflection<Pagamento, String>(
          this,
          Pagamento,
          __TR.tString,
          'link',
          false,
          (o) => () => o!.link,
          (o) => (v) => o!.link = v,
          obj,
          false,
        );
      case 'empresa':
        return FieldReflection<Pagamento, Empresa?>(
          this,
          Pagamento,
          __TR<Empresa>(Empresa),
          'empresa',
          true,
          (o) => () => o!.empresa,
          (o) => (v) => o!.empresa = v,
          obj,
          false,
        );
      case 'usuario':
        return FieldReflection<Pagamento, Usuario?>(
          this,
          Pagamento,
          __TR<Usuario>(Usuario),
          'usuario',
          true,
          (o) => () => o!.usuario,
          (o) => (v) => o!.usuario = v,
          obj,
          false,
        );
      case 'valor':
        return FieldReflection<Pagamento, double>(
          this,
          Pagamento,
          __TR.tDouble,
          'valor',
          false,
          (o) => () => o!.valor,
          (o) => (v) => o!.valor = v,
          obj,
          false,
          const [Coluna(nullable: false)],
        );
      case 'id':
        return FieldReflection<Pagamento, String>(
          this,
          Entidade,
          __TR.tString,
          'id',
          false,
          (o) => () => o!.id,
          (o) => (v) => o!.id = v,
          obj,
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
        return FieldReflection<Pagamento, int>(
          this,
          Entidade,
          __TR.tInt,
          'id2',
          false,
          (o) => () => o!.id2,
          (o) => (v) => o!.id2 = v,
          obj,
          false,
          const [Coluna(tipo: "bigint", defaultValue: "sequence")],
        );
      case 'ativa':
        return FieldReflection<Pagamento, bool>(
          this,
          Entidade,
          __TR.tBool,
          'ativa',
          false,
          (o) => () => o!.ativa,
          (o) => (v) => o!.ativa = v,
          obj,
          false,
        );
      case 'datacriacao':
        return FieldReflection<Pagamento, DateTime>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataCriacao',
          false,
          (o) => () => o!.dataCriacao,
          (o) => (v) => o!.dataCriacao = v,
          obj,
          false,
        );
      case 'dataedicao':
        return FieldReflection<Pagamento, DateTime>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataEdicao',
          false,
          (o) => () => o!.dataEdicao,
          (o) => (v) => o!.dataEdicao = v,
          obj,
          false,
        );
      case 'datadelecao':
        return FieldReflection<Pagamento, DateTime>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataDelecao',
          false,
          (o) => () => o!.dataDelecao,
          (o) => (v) => o!.dataDelecao = v,
          obj,
          false,
        );
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> getFieldsValues(Pagamento? obj,
      {bool withHashCode = false}) {
    obj ??= object;
    return <String, dynamic>{
      'referencia': obj?.referencia,
      'qrCode': obj?.qrCode,
      'pago': obj?.pago,
      'dataConfirmado': obj?.dataConfirmado,
      'link': obj?.link,
      'empresa': obj?.empresa,
      'usuario': obj?.usuario,
      'valor': obj?.valor,
      'id': obj?.id,
      'id2': obj?.id2,
      'ativa': obj?.ativa,
      'dataCriacao': obj?.dataCriacao,
      'dataEdicao': obj?.dataEdicao,
      'dataDelecao': obj?.dataDelecao,
      if (withHashCode) 'hashCode': obj?.hashCode,
    };
  }

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<Pagamento, T>? staticField<T>(String fieldName) => null;

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

  static final Map<String, MethodReflection<Pagamento, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<Pagamento, dynamic>> _methodsObject = {};

  @override
  MethodReflection<Pagamento, R>? method<R>(String methodName,
      [Pagamento? obj]) {
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

  MethodReflection<Pagamento, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<Pagamento, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<Pagamento, R>;
  }

  MethodReflection<Pagamento, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<Pagamento, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<Pagamento, dynamic>? _methodImpl(
      String methodName, Pagamento? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'reflect':
        return MethodReflection<Pagamento, ClassReflection<dynamic>>(
            this,
            Entidade,
            'reflect',
            __TR<ClassReflection<dynamic>>(
                ClassReflection, <__TR>[__TR.tDynamic]),
            false,
            (o) => o!.reflect,
            obj,
            null,
            null,
            null,
            null);
      case 'classtomap':
        return MethodReflection<Pagamento, Map<String, dynamic>>(
            this,
            SerialMethods,
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
        return MethodReflection<Pagamento, Map<String, dynamic>>(
            this,
            SerialMethods,
            'toJson',
            __TR.tMapStringDynamic,
            false,
            (o) => o!.toJson,
            obj,
            null,
            null,
            null,
            null);
      case 'dbmaptoclassmap':
        return MethodReflection<Pagamento, Map<String, dynamic>>(
            this,
            SerialMethods,
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
      case 'classtostring':
        return MethodReflection<Pagamento, String>(
            this,
            SerialMethods,
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
        return MethodReflection<Pagamento, String>(
            this,
            SerialMethods,
            'listClassToString',
            __TR.tString,
            false,
            (o) => o!.listClassToString,
            obj,
            const <__PR>[__PR(__TR.tListDynamic, 'list', false, true)],
            null,
            null,
            null);
      case 'stringtoclass':
        return MethodReflection<Pagamento, dynamic>(
            this,
            SerialMethods,
            'stringToClass',
            __TR.tDynamic,
            false,
            (o) => o!.stringToClass,
            obj,
            const <__PR>[__PR(__TR.tString, 'string', false, true)],
            null,
            null,
            null);
      case 'maptoclass':
        return MethodReflection<Pagamento, dynamic>(
            this,
            SerialMethods,
            'mapToClass',
            __TR.tDynamic,
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
        return MethodReflection<Pagamento, List<dynamic>>(
            this,
            SerialMethods,
            'listMapToListClass',
            __TR.tListDynamic,
            false,
            (o) => o!.listMapToListClass,
            obj,
            const <__PR>[__PR(__TR.tListDynamic, 'list', false, true)],
            null,
            null,
            null);
      case 'liststringtolistclass':
        return MethodReflection<Pagamento, List<dynamic>>(
            this,
            SerialMethods,
            'listStringToListClass',
            __TR.tListDynamic,
            false,
            (o) => o!.listStringToListClass,
            obj,
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

  static final Map<String, StaticMethodReflection<Pagamento, dynamic>>
      _staticMethods = {};

  @override
  StaticMethodReflection<Pagamento, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as StaticMethodReflection<Pagamento, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as StaticMethodReflection<Pagamento, R>;
  }

  StaticMethodReflection<Pagamento, dynamic>? _staticMethodImpl(
      String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return StaticMethodReflection<Pagamento, Pagamento>(
            this,
            Pagamento,
            'fromJson',
            __TR<Pagamento>(Pagamento),
            false,
            () => Pagamento.fromJson,
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

extension Pagamento$reflectionExtension on Pagamento {
  /// Returns a [ClassReflection] for type [Pagamento]. (Generated by [ReflectionFactory])
  ClassReflection<Pagamento> get reflection => Pagamento$reflection(this);

  /// Returns a JSON [Map] for type [Pagamento]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Pagamento]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Pagamento] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Pagamento$reflection(),
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
