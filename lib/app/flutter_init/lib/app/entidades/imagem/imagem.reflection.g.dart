//
// GENERATED CODE - DO NOT MODIFY BY HAND!
// BUILDER: reflection_factory/1.1.2
// BUILD COMMAND: dart run build_runner build
//

// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_type_check

part of 'imagem.dart';

// ignore: non_constant_identifier_names
Imagem Imagem$fromJson(Map<String, Object?> map) =>
    Imagem$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Imagem Imagem$fromJsonEncoded(String jsonEncoded) =>
    Imagem$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Imagem$reflection extends ClassReflection<Imagem> {
  Imagem$reflection([Imagem? object]) : super(Imagem, object);

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
  Imagem$reflection withObject([Imagem? obj]) => Imagem$reflection(obj);

  static Imagem$reflection? _withoutObjectInstance;
  @override
  Imagem$reflection withoutObjectInstance() => _withoutObjectInstance ??=
      super.withoutObjectInstance() as Imagem$reflection;

  static Imagem$reflection get staticInstance =>
      _withoutObjectInstance ??= Imagem$reflection();

  @override
  Imagem$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Imagem$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Imagem? createInstanceWithDefaultConstructor() => Imagem();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Imagem? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Imagem? createInstanceWithNoRequiredArgsConstructor() => null;

  @override
  List<String> get constructorsNames => const <String>[''];

  @override
  ConstructorReflection<Imagem>? constructor<R>(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Imagem>(
            this, Imagem, '', () => () => Imagem(), null, null, null, null);
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
  List<Type> get supperTypes => const <Type>[_ImagemBase, Entidade, Store];

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Imagem? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  @override
  List<String> get fieldsNames => const <String>[
        'ativa',
        'context',
        'dataCriacao',
        'dataDelecao',
        'dataEdicao',
        'id',
        'id2',
        'name',
        'size',
        'value'
      ];

  @override
  FieldReflection<Imagem, T>? field<T>(String fieldName, [Imagem? obj]) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'value':
        return FieldReflection<Imagem, T>(
          this,
          _ImagemBase,
          TypeReflection.tString,
          'value',
          true,
          (o) => () => o!.value as T,
          (o) => (T? v) => o!.value = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'name':
        return FieldReflection<Imagem, T>(
          this,
          _ImagemBase,
          TypeReflection.tString,
          'name',
          true,
          (o) => () => o!.name as T,
          (o) => (T? v) => o!.name = v as String?,
          obj,
          false,
          false,
          null,
        );
      case 'size':
        return FieldReflection<Imagem, T>(
          this,
          _ImagemBase,
          TypeReflection.tInt,
          'size',
          true,
          (o) => () => o!.size as T,
          (o) => (T? v) => o!.size = v as int?,
          obj,
          false,
          false,
          null,
        );
      case 'id':
        return FieldReflection<Imagem, T>(
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
        return FieldReflection<Imagem, T>(
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
        return FieldReflection<Imagem, T>(
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
        return FieldReflection<Imagem, T>(
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
        return FieldReflection<Imagem, T>(
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
        return FieldReflection<Imagem, T>(
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
        return FieldReflection<Imagem, T>(
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
  FieldReflection<Imagem, T>? staticField<T>(String fieldName) {
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
  MethodReflection<Imagem, R>? method<R>(String methodName, [Imagem? obj]) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'classtomap':
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
            'stringToClass',
            TypeReflection(Imagem),
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
            'mapToClass',
            TypeReflection(Imagem),
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
            'listMapToListClass',
            TypeReflection(List, [Imagem]),
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
            'reflect',
            TypeReflection(ClassReflection, [Imagem]),
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
  MethodReflection<Imagem, R>? staticMethod<R>(String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
            'fromJson',
            TypeReflection(Imagem),
            false,
            (o) => Imagem.fromJson,
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
        return MethodReflection<Imagem, R>(
            this,
            Imagem,
            'listMapToListClass2',
            TypeReflection(List, [Imagem]),
            true,
            (o) => Imagem.listMapToListClass2,
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

extension Imagem$reflectionExtension on Imagem {
  /// Returns a [ClassReflection] for type [Imagem]. (Generated by [ReflectionFactory])
  ClassReflection<Imagem> get reflection => Imagem$reflection(this);

  /// Returns a JSON [Map] for type [Imagem]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Imagem]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Imagem] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Imagem$reflection(),
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
