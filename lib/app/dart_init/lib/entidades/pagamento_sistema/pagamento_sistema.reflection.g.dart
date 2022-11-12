//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/1.1.2
// BUILD COMMAND: dart run build_runner build
//

// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'pagamento_sistema.dart';

// ignore: non_constant_identifier_names
PagamentoSistema PagamentoSistema$fromJson(Map<String, Object?> map) =>
    PagamentoSistema$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
PagamentoSistema PagamentoSistema$fromJsonEncoded(String jsonEncoded) =>
    PagamentoSistema$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class PagamentoSistema$reflection extends ClassReflection<PagamentoSistema> {
  PagamentoSistema$reflection([PagamentoSistema? object])
      : super(PagamentoSistema, object);

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
  PagamentoSistema$reflection withObject([PagamentoSistema? obj]) =>
      PagamentoSistema$reflection(obj);

  static PagamentoSistema$reflection? _withoutObjectInstance;
  @override
  PagamentoSistema$reflection withoutObjectInstance() =>
      _withoutObjectInstance ??=
          super.withoutObjectInstance() as PagamentoSistema$reflection;

  static PagamentoSistema$reflection get staticInstance =>
      _withoutObjectInstance ??= PagamentoSistema$reflection();

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

  @override
  List<String> get constructorsNames => const <String>[''];

  @override
  ConstructorReflection<PagamentoSistema>? constructor<R>(
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
  List<Type> get supperTypes => const <Type>[Entidade];

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([PagamentoSistema? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  @override
  List<String> get fieldsNames => const <String>[
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
  FieldReflection<PagamentoSistema, T>? field<T>(String fieldName,
      [PagamentoSistema? obj]) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'referencia':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection.tString,
          'referencia',
          true,
          (o) => () => o!.referencia as T,
          (o) => (T? v) => o!.referencia = v as String?,
          obj,
          false,
          false,
          [Coluna(nullable: false)],
        );
      case 'qrcode':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection.tString,
          'qrCode',
          true,
          (o) => () => o!.qrCode as T,
          (o) => (T? v) => o!.qrCode = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'pago':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection.tBool,
          'pago',
          true,
          (o) => () => o!.pago as T,
          (o) => (T? v) => o!.pago = v as bool?,
          obj,
          false,
          false,
          null,
        );
      case 'dataconfirmado':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection(DateTime),
          'dataConfirmado',
          true,
          (o) => () => o!.dataConfirmado as T,
          (o) => (T? v) => o!.dataConfirmado = v as DateTime?,
          obj,
          false,
          false,
          null,
        );
      case 'link':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection.tString,
          'link',
          true,
          (o) => () => o!.link as T,
          (o) => (T? v) => o!.link = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'empresa':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection(Empresa),
          'empresa',
          true,
          (o) => () => o!.empresa as T,
          (o) => (T? v) => o!.empresa = v as Empresa?,
          obj,
          false,
          false,
          null,
        );
      case 'usuario':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection(Usuario),
          'usuario',
          true,
          (o) => () => o!.usuario as T,
          (o) => (T? v) => o!.usuario = v as Usuario?,
          obj,
          false,
          false,
          null,
        );
      case 'valor':
        return FieldReflection<PagamentoSistema, T>(
          this,
          PagamentoSistema,
          TypeReflection.tDouble,
          'valor',
          true,
          (o) => () => o!.valor as T,
          (o) => (T? v) => o!.valor = v as double?,
          obj,
          false,
          false,
          [Coluna(nullable: false)],
        );
      case 'id':
        return FieldReflection<PagamentoSistema, T>(
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
          [
            Coluna(
                tipo: "uuid",
                primaryKey: true,
                nullable: false,
                defaultValue: "uuid_generate_v4()")
          ],
        );
      case 'id2':
        return FieldReflection<PagamentoSistema, T>(
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
          [Coluna(tipo: "bigint", defaultValue: "sequence")],
        );
      case 'ativa':
        return FieldReflection<PagamentoSistema, T>(
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
        return FieldReflection<PagamentoSistema, T>(
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
        return FieldReflection<PagamentoSistema, T>(
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
        return FieldReflection<PagamentoSistema, T>(
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
      default:
        return null;
    }
  }

  @override
  List<String> get staticFieldsNames => const <String>[];

  @override
  FieldReflection<PagamentoSistema, T>? staticField<T>(String fieldName) {
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
  MethodReflection<PagamentoSistema, R>? method<R>(String methodName,
      [PagamentoSistema? obj]) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
            'stringToClass',
            TypeReflection(PagamentoSistema),
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
            'mapToClass',
            TypeReflection(PagamentoSistema),
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
            'listMapToListClass',
            TypeReflection(List, [PagamentoSistema]),
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
            'reflect',
            TypeReflection(ClassReflection, [PagamentoSistema]),
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
  MethodReflection<PagamentoSistema, R>? staticMethod<R>(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
            'fromJson',
            TypeReflection(PagamentoSistema),
            false,
            (o) => PagamentoSistema.fromJson,
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
        return MethodReflection<PagamentoSistema, R>(
            this,
            PagamentoSistema,
            'listMapToListClass2',
            TypeReflection(List, [PagamentoSistema]),
            true,
            (o) => PagamentoSistema.listMapToListClass2,
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
