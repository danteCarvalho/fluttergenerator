//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/1.1.2
// BUILD COMMAND: dart run build_runner build
//

// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'pagamento.dart';

// ignore: non_constant_identifier_names
Pagamento Pagamento$fromJson(Map<String, Object?> map) =>
    Pagamento$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Pagamento Pagamento$fromJsonEncoded(String jsonEncoded) =>
    Pagamento$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Pagamento$reflection extends ClassReflection<Pagamento> {
  Pagamento$reflection([Pagamento? object]) : super(Pagamento, object);

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
  Pagamento$reflection withObject([Pagamento? obj]) =>
      Pagamento$reflection(obj);

  static Pagamento$reflection? _withoutObjectInstance;
  @override
  Pagamento$reflection withoutObjectInstance() => _withoutObjectInstance ??=
      super.withoutObjectInstance() as Pagamento$reflection;

  static Pagamento$reflection get staticInstance =>
      _withoutObjectInstance ??= Pagamento$reflection();

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

  @override
  List<String> get constructorsNames => const <String>[''];

  @override
  ConstructorReflection<Pagamento>? constructor<R>(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Pagamento>(this, Pagamento, '',
            () => () => Pagamento(), null, null, null, null);
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
  Object? callMethodToJson([Pagamento? obj]) {
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
  FieldReflection<Pagamento, T>? field<T>(String fieldName, [Pagamento? obj]) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'referencia':
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
          TypeReflection.tString,
          'referencia',
          true,
          (o) => () => o!.referencia as T,
          (o) => (T? v) => o!.referencia = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'qrcode':
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
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
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
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
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
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
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
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
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
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
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
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
        return FieldReflection<Pagamento, T>(
          this,
          Pagamento,
          TypeReflection.tDouble,
          'valor',
          true,
          (o) => () => o!.valor as T,
          (o) => (T? v) => o!.valor = v as double?,
          obj,
          false,
          false,
          null,
        );
      case 'id':
        return FieldReflection<Pagamento, T>(
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
        return FieldReflection<Pagamento, T>(
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
        return FieldReflection<Pagamento, T>(
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
        return FieldReflection<Pagamento, T>(
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
        return FieldReflection<Pagamento, T>(
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
        return FieldReflection<Pagamento, T>(
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
  FieldReflection<Pagamento, T>? staticField<T>(String fieldName) {
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
  MethodReflection<Pagamento, R>? method<R>(String methodName,
      [Pagamento? obj]) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
            'stringToClass',
            TypeReflection(Pagamento),
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
            'mapToClass',
            TypeReflection(Pagamento),
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
            'listMapToListClass',
            TypeReflection(List, [Pagamento]),
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
            'reflect',
            TypeReflection(ClassReflection, [Pagamento]),
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
  MethodReflection<Pagamento, R>? staticMethod<R>(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
            'fromJson',
            TypeReflection(Pagamento),
            false,
            (o) => Pagamento.fromJson,
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
        return MethodReflection<Pagamento, R>(
            this,
            Pagamento,
            'listMapToListClass2',
            TypeReflection(List, [Pagamento]),
            true,
            (o) => Pagamento.listMapToListClass2,
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
