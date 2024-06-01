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

part of 'empresa.dart';

typedef __TR<T> = TypeReflection<T>;
typedef __TI<T> = TypeInfo<T>;
typedef __PR = ParameterReflection;

mixin __ReflectionMixin {
  static final Version _version = Version.parse('2.2.8');

  Version get reflectionFactoryVersion => _version;

  List<Reflection> siblingsReflection() => _siblingsReflection();
}

// ignore: non_constant_identifier_names
Empresa Empresa$fromJson(Map<String, Object?> map) =>
    Empresa$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Empresa Empresa$fromJsonEncoded(String jsonEncoded) =>
    Empresa$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Empresa$reflection extends ClassReflection<Empresa>
    with __ReflectionMixin {
  static final Expando<Empresa$reflection> _objectReflections = Expando();

  factory Empresa$reflection([Empresa? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= Empresa$reflection._(object);
  }

  Empresa$reflection._([Empresa? object]) : super(Empresa, 'Empresa', object);

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
  Empresa$reflection withObject([Empresa? obj]) =>
      Empresa$reflection(obj)..setupInternalsWith(this);

  static Empresa$reflection? _withoutObjectInstance;
  @override
  Empresa$reflection withoutObjectInstance() => staticInstance;

  static Empresa$reflection get staticInstance =>
      _withoutObjectInstance ??= Empresa$reflection._();

  @override
  Empresa$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Empresa$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Empresa? createInstanceWithDefaultConstructor() => Empresa();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Empresa? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Empresa? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<Empresa>> _constructors =
      <String, ConstructorReflection<Empresa>>{};

  @override
  ConstructorReflection<Empresa>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<Empresa>? _constructorImpl(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Empresa>(
            this, Empresa, '', () => () => Empresa(), null, null, null, null);
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
  Object? callMethodToJson([Empresa? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  static const List<String> _fieldsNames = const <String>[
    'ambienteProducao',
    'anydesk',
    'ativa',
    'bairro',
    'cep',
    'cnpj',
    'contingenciaAoDemorar',
    'csc',
    'dataCriacao',
    'dataDelecao',
    'dataEdicao',
    'dataPagamento',
    'emissaoNormal',
    'estado',
    'id',
    'id2',
    'idCsc',
    'impressaoNfce',
    'inscricaoEstadual',
    'justificativaContingencia',
    'lastTry',
    'lastUpdate',
    'latitude',
    'logradouro',
    'longitude',
    'municipio',
    'nome',
    'nsu',
    'numeroCasa',
    'numeroNotaFiscal',
    'numeroNotaFiscalHomologacao',
    'razaoSocial',
    'regimeTributario',
    'serie',
    'telefone',
    'tipoGeracaoNota',
    'ultimoPagamentoCompleto',
    'ultimoPagamentoGerado',
    'valorPagamento',
    'whatsapp'
  ];

  @override
  List<String> get fieldsNames => _fieldsNames;

  static final Map<String, FieldReflection<Empresa, dynamic>> _fieldsNoObject =
      <String, FieldReflection<Empresa, dynamic>>{};

  final Map<String, FieldReflection<Empresa, dynamic>> _fieldsObject =
      <String, FieldReflection<Empresa, dynamic>>{};

  @override
  FieldReflection<Empresa, T>? field<T>(String fieldName, [Empresa? obj]) {
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

  FieldReflection<Empresa, T>? _fieldNoObjectImpl<T>(String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Empresa, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<Empresa, T>;
  }

  FieldReflection<Empresa, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Empresa, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<Empresa, dynamic>? _fieldImpl(
      String fieldName, Empresa? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'nome':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'nome',
          true,
          (o) => () => o!.nome,
          (o) => (v) => o!.nome = v,
          obj,
          false,
          false,
          const [Coluna(nullable: false)],
        );
      case 'valorpagamento':
        return FieldReflection<Empresa, double?>(
          this,
          Empresa,
          __TR.tDouble,
          'valorPagamento',
          true,
          (o) => () => o!.valorPagamento,
          (o) => (v) => o!.valorPagamento = v,
          obj,
          false,
          false,
          const [Coluna(nullable: false)],
        );
      case 'telefone':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'telefone',
          true,
          (o) => () => o!.telefone,
          (o) => (v) => o!.telefone = v,
          obj,
          false,
          false,
        );
      case 'anydesk':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'anydesk',
          true,
          (o) => () => o!.anydesk,
          (o) => (v) => o!.anydesk = v,
          obj,
          false,
          false,
        );
      case 'whatsapp':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'whatsapp',
          true,
          (o) => () => o!.whatsapp,
          (o) => (v) => o!.whatsapp = v,
          obj,
          false,
          false,
        );
      case 'latitude':
        return FieldReflection<Empresa, double?>(
          this,
          Empresa,
          __TR.tDouble,
          'latitude',
          true,
          (o) => () => o!.latitude,
          (o) => (v) => o!.latitude = v,
          obj,
          false,
          false,
        );
      case 'longitude':
        return FieldReflection<Empresa, double?>(
          this,
          Empresa,
          __TR.tDouble,
          'longitude',
          true,
          (o) => () => o!.longitude,
          (o) => (v) => o!.longitude = v,
          obj,
          false,
          false,
        );
      case 'datapagamento':
        return FieldReflection<Empresa, DateTime?>(
          this,
          Empresa,
          __TR<DateTime>(DateTime),
          'dataPagamento',
          true,
          (o) => () => o!.dataPagamento,
          (o) => (v) => o!.dataPagamento = v,
          obj,
          false,
          false,
          const [Coluna(nullable: false)],
        );
      case 'lastupdate':
        return FieldReflection<Empresa, DateTime?>(
          this,
          Empresa,
          __TR<DateTime>(DateTime),
          'lastUpdate',
          true,
          (o) => () => o!.lastUpdate,
          (o) => (v) => o!.lastUpdate = v,
          obj,
          false,
          false,
        );
      case 'lasttry':
        return FieldReflection<Empresa, DateTime?>(
          this,
          Empresa,
          __TR<DateTime>(DateTime),
          'lastTry',
          true,
          (o) => () => o!.lastTry,
          (o) => (v) => o!.lastTry = v,
          obj,
          false,
          false,
        );
      case 'ultimopagamentocompleto':
        return FieldReflection<Empresa, DateTime?>(
          this,
          Empresa,
          __TR<DateTime>(DateTime),
          'ultimoPagamentoCompleto',
          true,
          (o) => () => o!.ultimoPagamentoCompleto,
          (o) => (v) => o!.ultimoPagamentoCompleto = v,
          obj,
          false,
          false,
        );
      case 'ultimopagamentogerado':
        return FieldReflection<Empresa, DateTime?>(
          this,
          Empresa,
          __TR<DateTime>(DateTime),
          'ultimoPagamentoGerado',
          true,
          (o) => () => o!.ultimoPagamentoGerado,
          (o) => (v) => o!.ultimoPagamentoGerado = v,
          obj,
          false,
          false,
        );
      case 'ambienteproducao':
        return FieldReflection<Empresa, bool?>(
          this,
          Empresa,
          __TR.tBool,
          'ambienteProducao',
          true,
          (o) => () => o!.ambienteProducao,
          (o) => (v) => o!.ambienteProducao = v,
          obj,
          false,
          false,
        );
      case 'emissaonormal':
        return FieldReflection<Empresa, bool?>(
          this,
          Empresa,
          __TR.tBool,
          'emissaoNormal',
          true,
          (o) => () => o!.emissaoNormal,
          (o) => (v) => o!.emissaoNormal = v,
          obj,
          false,
          false,
        );
      case 'impressaonfce':
        return FieldReflection<Empresa, bool?>(
          this,
          Empresa,
          __TR.tBool,
          'impressaoNfce',
          true,
          (o) => () => o!.impressaoNfce,
          (o) => (v) => o!.impressaoNfce = v,
          obj,
          false,
          false,
        );
      case 'contingenciaaodemorar':
        return FieldReflection<Empresa, bool?>(
          this,
          Empresa,
          __TR.tBool,
          'contingenciaAoDemorar',
          true,
          (o) => () => o!.contingenciaAoDemorar,
          (o) => (v) => o!.contingenciaAoDemorar = v,
          obj,
          false,
          false,
        );
      case 'justificativacontingencia':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'justificativaContingencia',
          true,
          (o) => () => o!.justificativaContingencia,
          (o) => (v) => o!.justificativaContingencia = v,
          obj,
          false,
          false,
        );
      case 'tipogeracaonota':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'tipoGeracaoNota',
          true,
          (o) => () => o!.tipoGeracaoNota,
          (o) => (v) => o!.tipoGeracaoNota = v,
          obj,
          false,
          false,
        );
      case 'csc':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'csc',
          true,
          (o) => () => o!.csc,
          (o) => (v) => o!.csc = v,
          obj,
          false,
          false,
        );
      case 'idcsc':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'idCsc',
          true,
          (o) => () => o!.idCsc,
          (o) => (v) => o!.idCsc = v,
          obj,
          false,
          false,
        );
      case 'serie':
        return FieldReflection<Empresa, int?>(
          this,
          Empresa,
          __TR.tInt,
          'serie',
          true,
          (o) => () => o!.serie,
          (o) => (v) => o!.serie = v,
          obj,
          false,
          false,
        );
      case 'numeronotafiscal':
        return FieldReflection<Empresa, int?>(
          this,
          Empresa,
          __TR.tInt,
          'numeroNotaFiscal',
          true,
          (o) => () => o!.numeroNotaFiscal,
          (o) => (v) => o!.numeroNotaFiscal = v,
          obj,
          false,
          false,
        );
      case 'numeronotafiscalhomologacao':
        return FieldReflection<Empresa, int?>(
          this,
          Empresa,
          __TR.tInt,
          'numeroNotaFiscalHomologacao',
          true,
          (o) => () => o!.numeroNotaFiscalHomologacao,
          (o) => (v) => o!.numeroNotaFiscalHomologacao = v,
          obj,
          false,
          false,
        );
      case 'cnpj':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'cnpj',
          true,
          (o) => () => o!.cnpj,
          (o) => (v) => o!.cnpj = v,
          obj,
          false,
          false,
        );
      case 'razaosocial':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'razaoSocial',
          true,
          (o) => () => o!.razaoSocial,
          (o) => (v) => o!.razaoSocial = v,
          obj,
          false,
          false,
        );
      case 'municipio':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'municipio',
          true,
          (o) => () => o!.municipio,
          (o) => (v) => o!.municipio = v,
          obj,
          false,
          false,
        );
      case 'estado':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'estado',
          true,
          (o) => () => o!.estado,
          (o) => (v) => o!.estado = v,
          obj,
          false,
          false,
        );
      case 'cep':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'cep',
          true,
          (o) => () => o!.cep,
          (o) => (v) => o!.cep = v,
          obj,
          false,
          false,
        );
      case 'bairro':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'bairro',
          true,
          (o) => () => o!.bairro,
          (o) => (v) => o!.bairro = v,
          obj,
          false,
          false,
        );
      case 'logradouro':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'logradouro',
          true,
          (o) => () => o!.logradouro,
          (o) => (v) => o!.logradouro = v,
          obj,
          false,
          false,
        );
      case 'numerocasa':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'numeroCasa',
          true,
          (o) => () => o!.numeroCasa,
          (o) => (v) => o!.numeroCasa = v,
          obj,
          false,
          false,
        );
      case 'inscricaoestadual':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'inscricaoEstadual',
          true,
          (o) => () => o!.inscricaoEstadual,
          (o) => (v) => o!.inscricaoEstadual = v,
          obj,
          false,
          false,
        );
      case 'regimetributario':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'regimeTributario',
          true,
          (o) => () => o!.regimeTributario,
          (o) => (v) => o!.regimeTributario = v,
          obj,
          false,
          false,
        );
      case 'nsu':
        return FieldReflection<Empresa, String?>(
          this,
          Empresa,
          __TR.tString,
          'nsu',
          true,
          (o) => () => o!.nsu,
          (o) => (v) => o!.nsu = v,
          obj,
          false,
          false,
        );
      case 'id':
        return FieldReflection<Empresa, String?>(
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
        return FieldReflection<Empresa, int?>(
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
        return FieldReflection<Empresa, bool?>(
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
        return FieldReflection<Empresa, DateTime?>(
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
        return FieldReflection<Empresa, DateTime?>(
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
        return FieldReflection<Empresa, DateTime?>(
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
  FieldReflection<Empresa, T>? staticField<T>(String fieldName) => null;

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

  static final Map<String, MethodReflection<Empresa, dynamic>>
      _methodsNoObject = <String, MethodReflection<Empresa, dynamic>>{};

  final Map<String, MethodReflection<Empresa, dynamic>> _methodsObject =
      <String, MethodReflection<Empresa, dynamic>>{};

  @override
  MethodReflection<Empresa, R>? method<R>(String methodName, [Empresa? obj]) {
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

  MethodReflection<Empresa, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<Empresa, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<Empresa, R>;
  }

  MethodReflection<Empresa, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<Empresa, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<Empresa, dynamic>? _methodImpl(
      String methodName, Empresa? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'reflect':
        return MethodReflection<Empresa, ClassReflection<dynamic>>(
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
        return MethodReflection<Empresa, Map<String, dynamic>>(
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
        return MethodReflection<Empresa, Map<String, dynamic>>(
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
        return MethodReflection<Empresa, Map<String, dynamic>>(
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
        return MethodReflection<Empresa, String>(
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
        return MethodReflection<Empresa, String>(
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
        return MethodReflection<Empresa, dynamic>(
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
        return MethodReflection<Empresa, dynamic>(
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
        return MethodReflection<Empresa, List<dynamic>>(
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
        return MethodReflection<Empresa, List<dynamic>>(
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

  static final Map<String, MethodReflection<Empresa, dynamic>> _staticMethods =
      <String, MethodReflection<Empresa, dynamic>>{};

  @override
  MethodReflection<Empresa, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as MethodReflection<Empresa, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as MethodReflection<Empresa, R>;
  }

  MethodReflection<Empresa, dynamic>? _staticMethodImpl(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<Empresa, Empresa>(
            this,
            Empresa,
            'fromJson',
            __TR<Empresa>(Empresa),
            false,
            (o) => Empresa.fromJson,
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

extension Empresa$reflectionExtension on Empresa {
  /// Returns a [ClassReflection] for type [Empresa]. (Generated by [ReflectionFactory])
  ClassReflection<Empresa> get reflection => Empresa$reflection(this);

  /// Returns a JSON [Map] for type [Empresa]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Empresa]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Empresa] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Empresa$reflection(),
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
