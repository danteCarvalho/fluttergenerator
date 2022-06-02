//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/1.1.2
// BUILD COMMAND: dart run build_runner build
//

// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'empresa.dart';

// ignore: non_constant_identifier_names
Empresa Empresa$fromJson(Map<String, Object?> map) =>
    Empresa$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Empresa Empresa$fromJsonEncoded(String jsonEncoded) =>
    Empresa$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Empresa$reflection extends ClassReflection<Empresa> {
  Empresa$reflection([Empresa? object]) : super(Empresa, object);

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
  Version get languageVersion => Version.parse('2.17.0');

  @override
  Version get reflectionFactoryVersion => Version.parse('1.1.2');

  @override
  Empresa$reflection withObject([Empresa? obj]) => Empresa$reflection(obj);

  static Empresa$reflection? _withoutObjectInstance;
  @override
  Empresa$reflection withoutObjectInstance() => _withoutObjectInstance ??=
      super.withoutObjectInstance() as Empresa$reflection;

  static Empresa$reflection get staticInstance =>
      _withoutObjectInstance ??= Empresa$reflection();

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

  @override
  List<String> get constructorsNames => const <String>[''];

  @override
  ConstructorReflection<Empresa>? constructor<R>(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Empresa>(
            this, Empresa, '', () => () => Empresa(), null, null, null, null);
      default:
        return null;
    }
  }

  static const List<Object> _classAnnotations = [
    JsonSerializable(explicitToJson: true, anyMap: true),
    reflector
  ];

  @override
  List<Object> get classAnnotations =>
      List<Object>.unmodifiable(_classAnnotations);

  @override
  List<ClassReflection> siblingsClassReflection() =>
      _siblingsReflection().whereType<ClassReflection>().toList();

  @override
  List<Reflection> siblingsReflection() => _siblingsReflection();

  @override
  List<Type> get supperTypes => const <Type>[_EmpresaBase, Entidade, Store];

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Empresa? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  @override
  List<String> get fieldsNames => const <String>[
        'ambienteProducao',
        'anydesk',
        'ativa',
        'bairro',
        'cep',
        'cnpj',
        'context',
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
  FieldReflection<Empresa, T>? field<T>(String fieldName, [Empresa? obj]) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'nome':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'nome',
          true,
          (o) => () => o!.nome as T,
          (o) => (T? v) => o!.nome = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'valorpagamento':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tDouble,
          'valorPagamento',
          true,
          (o) => () => o!.valorPagamento as T,
          (o) => (T? v) => o!.valorPagamento = v as double?,
          obj,
          false,
          false,
          null,
        );
      case 'telefone':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'telefone',
          true,
          (o) => () => o!.telefone as T,
          (o) => (T? v) => o!.telefone = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'anydesk':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'anydesk',
          true,
          (o) => () => o!.anydesk as T,
          (o) => (T? v) => o!.anydesk = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'whatsapp':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'whatsapp',
          true,
          (o) => () => o!.whatsapp as T,
          (o) => (T? v) => o!.whatsapp = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'latitude':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tDouble,
          'latitude',
          true,
          (o) => () => o!.latitude as T,
          (o) => (T? v) => o!.latitude = v as double?,
          obj,
          false,
          false,
          null,
        );
      case 'longitude':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tDouble,
          'longitude',
          true,
          (o) => () => o!.longitude as T,
          (o) => (T? v) => o!.longitude = v as double?,
          obj,
          false,
          false,
          null,
        );
      case 'datapagamento':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection(DateTime),
          'dataPagamento',
          true,
          (o) => () => o!.dataPagamento as T,
          (o) => (T? v) => o!.dataPagamento = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'lastupdate':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection(DateTime),
          'lastUpdate',
          true,
          (o) => () => o!.lastUpdate as T,
          (o) => (T? v) => o!.lastUpdate = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'lasttry':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection(DateTime),
          'lastTry',
          true,
          (o) => () => o!.lastTry as T,
          (o) => (T? v) => o!.lastTry = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'ultimopagamentocompleto':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection(DateTime),
          'ultimoPagamentoCompleto',
          true,
          (o) => () => o!.ultimoPagamentoCompleto as T,
          (o) => (T? v) => o!.ultimoPagamentoCompleto = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'ultimopagamentogerado':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection(DateTime),
          'ultimoPagamentoGerado',
          true,
          (o) => () => o!.ultimoPagamentoGerado as T,
          (o) => (T? v) => o!.ultimoPagamentoGerado = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'ambienteproducao':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tBool,
          'ambienteProducao',
          true,
          (o) => () => o!.ambienteProducao as T,
          (o) => (T? v) => o!.ambienteProducao = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'emissaonormal':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tBool,
          'emissaoNormal',
          true,
          (o) => () => o!.emissaoNormal as T,
          (o) => (T? v) => o!.emissaoNormal = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'impressaonfce':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tBool,
          'impressaoNfce',
          true,
          (o) => () => o!.impressaoNfce as T,
          (o) => (T? v) => o!.impressaoNfce = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'contingenciaaodemorar':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tBool,
          'contingenciaAoDemorar',
          true,
          (o) => () => o!.contingenciaAoDemorar as T,
          (o) => (T? v) => o!.contingenciaAoDemorar = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'justificativacontingencia':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'justificativaContingencia',
          true,
          (o) => () => o!.justificativaContingencia as T,
          (o) => (T? v) => o!.justificativaContingencia = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'tipogeracaonota':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'tipoGeracaoNota',
          true,
          (o) => () => o!.tipoGeracaoNota as T,
          (o) => (T? v) => o!.tipoGeracaoNota = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'csc':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'csc',
          true,
          (o) => () => o!.csc as T,
          (o) => (T? v) => o!.csc = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'idcsc':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'idCsc',
          true,
          (o) => () => o!.idCsc as T,
          (o) => (T? v) => o!.idCsc = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'serie':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tInt,
          'serie',
          true,
          (o) => () => o!.serie as T,
          (o) => (T? v) => o!.serie = v as int?,
          obj,
          false,
          false,
          null,
        );
      case 'numeronotafiscal':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tInt,
          'numeroNotaFiscal',
          true,
          (o) => () => o!.numeroNotaFiscal as T,
          (o) => (T? v) => o!.numeroNotaFiscal = v as int?,
          obj,
          false,
          false,
          null,
        );
      case 'numeronotafiscalhomologacao':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tInt,
          'numeroNotaFiscalHomologacao',
          true,
          (o) => () => o!.numeroNotaFiscalHomologacao as T,
          (o) => (T? v) => o!.numeroNotaFiscalHomologacao = v as int?,
          obj,
          false,
          false,
          null,
        );
      case 'cnpj':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'cnpj',
          true,
          (o) => () => o!.cnpj as T,
          (o) => (T? v) => o!.cnpj = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'razaosocial':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'razaoSocial',
          true,
          (o) => () => o!.razaoSocial as T,
          (o) => (T? v) => o!.razaoSocial = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'municipio':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'municipio',
          true,
          (o) => () => o!.municipio as T,
          (o) => (T? v) => o!.municipio = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'estado':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'estado',
          true,
          (o) => () => o!.estado as T,
          (o) => (T? v) => o!.estado = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'cep':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'cep',
          true,
          (o) => () => o!.cep as T,
          (o) => (T? v) => o!.cep = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'bairro':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'bairro',
          true,
          (o) => () => o!.bairro as T,
          (o) => (T? v) => o!.bairro = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'logradouro':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'logradouro',
          true,
          (o) => () => o!.logradouro as T,
          (o) => (T? v) => o!.logradouro = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'numerocasa':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'numeroCasa',
          true,
          (o) => () => o!.numeroCasa as T,
          (o) => (T? v) => o!.numeroCasa = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'inscricaoestadual':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'inscricaoEstadual',
          true,
          (o) => () => o!.inscricaoEstadual as T,
          (o) => (T? v) => o!.inscricaoEstadual = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'regimetributario':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'regimeTributario',
          true,
          (o) => () => o!.regimeTributario as T,
          (o) => (T? v) => o!.regimeTributario = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'nsu':
        return FieldReflection<Empresa, T>(
          this,
          _EmpresaBase,
          TypeReflection.tString,
          'nsu',
          true,
          (o) => () => o!.nsu as T,
          (o) => (T? v) => o!.nsu = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'id':
        return FieldReflection<Empresa, T>(
          this,
          Entidade,
          TypeReflection.tString,
          'id',
          true,
          (o) => () => o!.id as T,
          (o) => (T? v) => o!.id = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'id2':
        return FieldReflection<Empresa, T>(
          this,
          Entidade,
          TypeReflection.tInt,
          'id2',
          true,
          (o) => () => o!.id2 as T,
          (o) => (T? v) => o!.id2 = v as int?,
          obj,
          false,
          false,
          null,
        );
      case 'ativa':
        return FieldReflection<Empresa, T>(
          this,
          Entidade,
          TypeReflection.tBool,
          'ativa',
          true,
          (o) => () => o!.ativa as T,
          (o) => (T? v) => o!.ativa = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'datacriacao':
        return FieldReflection<Empresa, T>(
          this,
          Entidade,
          TypeReflection(DateTime),
          'dataCriacao',
          true,
          (o) => () => o!.dataCriacao as T,
          (o) => (T? v) => o!.dataCriacao = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'dataedicao':
        return FieldReflection<Empresa, T>(
          this,
          Entidade,
          TypeReflection(DateTime),
          'dataEdicao',
          true,
          (o) => () => o!.dataEdicao as T,
          (o) => (T? v) => o!.dataEdicao = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'datadelecao':
        return FieldReflection<Empresa, T>(
          this,
          Entidade,
          TypeReflection(DateTime),
          'dataDelecao',
          true,
          (o) => () => o!.dataDelecao as T,
          (o) => (T? v) => o!.dataDelecao = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'context':
        return FieldReflection<Empresa, T>(
          this,
          Store,
          TypeReflection(ReactiveContext),
          'context',
          false,
          (o) => () => o!.context as T,
          null,
          obj,
          false,
          false,
          null,
        );
      default:
        return null;
    }
  }

  @override
  List<String> get staticFieldsNames => const <String>[];

  @override
  FieldReflection<Empresa, T>? staticField<T>(String fieldName) {
    return null;
  }

  @override
  List<String> get methodsNames => const <String>[
        'classToMap',
        'classToString',
        'dbMaptoClassMap',
        'listMapToListClass',
        'mapToClass',
        'reflect',
        'stringToClass',
        'toJson'
      ];

  @override
  MethodReflection<Empresa, R>? method<R>(String methodName, [Empresa? obj]) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'classToMap',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.classToMap,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      case 'tojson':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'toJson',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.toJson,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      case 'dbmaptoclassmap':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'dbMaptoClassMap',
            TypeReflection.tMapStringDynamic,
            false,
            (o) => o!.dbMaptoClassMap,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(TypeReflection(Map, [dynamic, dynamic]),
                  'original', false, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'classtostring':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'classToString',
            TypeReflection.tString,
            false,
            (o) => o!.classToString,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      case 'stringtoclass':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'stringToClass',
            TypeReflection(Empresa),
            false,
            (o) => o!.stringToClass,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(
                  TypeReflection.tString, 'string', false, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'maptoclass':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'mapToClass',
            TypeReflection(Empresa),
            false,
            (o) => o!.mapToClass,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(TypeReflection(Map, [dynamic, dynamic]),
                  'map', false, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'listmaptolistclass':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'listMapToListClass',
            TypeReflection(List, [Empresa]),
            true,
            (o) => o!.listMapToListClass,
            obj,
            false,
            const <ParameterReflection>[
              ParameterReflection(
                  TypeReflection.tListDynamic, 'list', true, true, null, null)
            ],
            null,
            null,
            [override]);
      case 'reflect':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'reflect',
            TypeReflection(ClassReflection, [Empresa]),
            false,
            (o) => o!.reflect,
            obj,
            false,
            null,
            null,
            null,
            [override]);
      default:
        return null;
    }
  }

  @override
  List<String> get staticMethodsNames =>
      const <String>['fromJson', 'listMapToListClass2'];

  @override
  MethodReflection<Empresa, R>? staticMethod<R>(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'fromJson',
            TypeReflection(Empresa),
            false,
            (o) => Empresa.fromJson,
            null,
            true,
            const <ParameterReflection>[
              ParameterReflection(TypeReflection(Map, [dynamic, dynamic]),
                  'map', false, true, null, null)
            ],
            null,
            null,
            null);
      case 'listmaptolistclass2':
        return MethodReflection<Empresa, R>(
            this,
            Empresa,
            'listMapToListClass2',
            TypeReflection(List, [Empresa]),
            true,
            (o) => Empresa.listMapToListClass2,
            null,
            true,
            const <ParameterReflection>[
              ParameterReflection(
                  TypeReflection.tListDynamic, 'list', true, true, null, null)
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
