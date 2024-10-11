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
Usuario Usuario$fromJson(Map<String, Object?> map) =>
    Usuario$reflection.staticInstance.fromJson(map);
// ignore: non_constant_identifier_names
Usuario Usuario$fromJsonEncoded(String jsonEncoded) =>
    Usuario$reflection.staticInstance.fromJsonEncoded(jsonEncoded);

class Usuario$reflection extends ClassReflection<Usuario>
    with __ReflectionMixin {
  static final Expando<Usuario$reflection> _objectReflections = Expando();

  factory Usuario$reflection([Usuario? object]) {
    if (object == null) return staticInstance;
    return _objectReflections[object] ??= Usuario$reflection._(object);
  }

  Usuario$reflection._([Usuario? object]) : super(Usuario, r'Usuario', object);

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
  Usuario$reflection withObject([Usuario? obj]) =>
      Usuario$reflection(obj)..setupInternalsWith(this);

  static Usuario$reflection? _withoutObjectInstance;
  @override
  Usuario$reflection withoutObjectInstance() => staticInstance;

  static Usuario$reflection get staticInstance =>
      _withoutObjectInstance ??= Usuario$reflection._();

  @override
  Usuario$reflection getStaticInstance() => staticInstance;

  static bool _boot = false;
  static void boot() {
    if (_boot) return;
    _boot = true;
    Usuario$reflection.staticInstance;
  }

  @override
  bool get hasDefaultConstructor => true;
  @override
  Usuario? createInstanceWithDefaultConstructor() => Usuario();

  @override
  bool get hasEmptyConstructor => false;
  @override
  Usuario? createInstanceWithEmptyConstructor() => null;
  @override
  bool get hasNoRequiredArgsConstructor => false;
  @override
  Usuario? createInstanceWithNoRequiredArgsConstructor() => null;

  static const List<String> _constructorsNames = const <String>[''];

  @override
  List<String> get constructorsNames => _constructorsNames;

  static final Map<String, ConstructorReflection<Usuario>> _constructors = {};

  @override
  ConstructorReflection<Usuario>? constructor(String constructorName) {
    var c = _constructors[constructorName];
    if (c != null) return c;
    c = _constructorImpl(constructorName);
    if (c == null) return null;
    _constructors[constructorName] = c;
    return c;
  }

  ConstructorReflection<Usuario>? _constructorImpl(String constructorName) {
    var lc = constructorName.trim().toLowerCase();

    switch (lc) {
      case '':
        return ConstructorReflection<Usuario>(
            this, Usuario, '', () => () => Usuario(), null, null, null, null);
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
    _UsuarioBase,
    Entidade,
    SerialMethods,
    Store,
    _$Usuario,
    _$Serial
  ];

  @override
  List<Type> get supperTypes => _supperTypes;

  @override
  bool get hasMethodToJson => true;

  @override
  Object? callMethodToJson([Usuario? obj]) {
    obj ??= object;
    return obj?.toJson();
  }

  static const List<String> _fieldsNames = const <String>[
    'admin',
    'ativa',
    'bairro',
    'cep',
    'cidade',
    'complemento',
    'context',
    'cpfCnpj',
    'dataCriacao',
    'dataDelecao',
    'dataEdicao',
    'dataNascimento',
    'dataPagamento',
    'email',
    'emailVerificado',
    'empresa',
    'enderecoLogradouroRua',
    'estado',
    'id',
    'id2',
    'imagem',
    'latitude',
    'longitude',
    'nome',
    'numeroEndereco',
    'senha',
    'telefone',
    'ultimoPagamentoCompleto',
    'ultimoPagamentoGerado',
    'username',
    'valorPagamento'
  ];

  @override
  List<String> get fieldsNames => _fieldsNames;

  static final Map<String, FieldReflection<Usuario, dynamic>> _fieldsNoObject =
      {};

  final Map<String, FieldReflection<Usuario, dynamic>> _fieldsObject = {};

  @override
  FieldReflection<Usuario, T>? field<T>(String fieldName, [Usuario? obj]) {
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

  FieldReflection<Usuario, T>? _fieldNoObjectImpl<T>(String fieldName) {
    final f = _fieldsNoObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Usuario, T>;
    }
    final f2 = _fieldImpl(fieldName, null);
    if (f2 == null) return null;
    _fieldsNoObject[fieldName] = f2;
    return f2 as FieldReflection<Usuario, T>;
  }

  FieldReflection<Usuario, T>? _fieldObjectImpl<T>(String fieldName) {
    final f = _fieldsObject[fieldName];
    if (f != null) {
      return f as FieldReflection<Usuario, T>;
    }
    var f2 = _fieldNoObjectImpl<T>(fieldName);
    if (f2 == null) return null;
    f2 = f2.withObject(object!);
    _fieldsObject[fieldName] = f2;
    return f2;
  }

  FieldReflection<Usuario, dynamic>? _fieldImpl(
      String fieldName, Usuario? obj) {
    obj ??= object;

    var lc = fieldName.trim().toLowerCase();

    switch (lc) {
      case 'nome':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'nome',
          false,
          (o) => () => o!.nome,
          (o) => (v) => o!.nome = v,
          obj,
          false,
          const [observable],
        );
      case 'senha':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'senha',
          false,
          (o) => () => o!.senha,
          (o) => (v) => o!.senha = v,
          obj,
          false,
          const [observable],
        );
      case 'username':
        return FieldReflection<Usuario, String?>(
          this,
          _UsuarioBase,
          __TR.tString,
          'username',
          true,
          (o) => () => o!.username,
          (o) => (v) => o!.username = v,
          obj,
          false,
        );
      case 'email':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'email',
          false,
          (o) => () => o!.email,
          (o) => (v) => o!.email = v,
          obj,
          false,
          const [observable],
        );
      case 'cpfcnpj':
        return FieldReflection<Usuario, String?>(
          this,
          _UsuarioBase,
          __TR.tString,
          'cpfCnpj',
          true,
          (o) => () => o!.cpfCnpj,
          (o) => (v) => o!.cpfCnpj = v,
          obj,
          false,
        );
      case 'datanascimento':
        return FieldReflection<Usuario, DateTime>(
          this,
          _UsuarioBase,
          __TR<DateTime>(DateTime),
          'dataNascimento',
          false,
          (o) => () => o!.dataNascimento,
          (o) => (v) => o!.dataNascimento = v,
          obj,
          false,
        );
      case 'enderecologradourorua':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'enderecoLogradouroRua',
          false,
          (o) => () => o!.enderecoLogradouroRua,
          (o) => (v) => o!.enderecoLogradouroRua = v,
          obj,
          false,
        );
      case 'numeroendereco':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'numeroEndereco',
          false,
          (o) => () => o!.numeroEndereco,
          (o) => (v) => o!.numeroEndereco = v,
          obj,
          false,
        );
      case 'bairro':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'bairro',
          false,
          (o) => () => o!.bairro,
          (o) => (v) => o!.bairro = v,
          obj,
          false,
        );
      case 'cep':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'cep',
          false,
          (o) => () => o!.cep,
          (o) => (v) => o!.cep = v,
          obj,
          false,
        );
      case 'cidade':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'cidade',
          false,
          (o) => () => o!.cidade,
          (o) => (v) => o!.cidade = v,
          obj,
          false,
        );
      case 'estado':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'estado',
          false,
          (o) => () => o!.estado,
          (o) => (v) => o!.estado = v,
          obj,
          false,
        );
      case 'complemento':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'complemento',
          false,
          (o) => () => o!.complemento,
          (o) => (v) => o!.complemento = v,
          obj,
          false,
        );
      case 'telefone':
        return FieldReflection<Usuario, String>(
          this,
          _UsuarioBase,
          __TR.tString,
          'telefone',
          false,
          (o) => () => o!.telefone,
          (o) => (v) => o!.telefone = v,
          obj,
          false,
        );
      case 'admin':
        return FieldReflection<Usuario, bool>(
          this,
          _UsuarioBase,
          __TR.tBool,
          'admin',
          false,
          (o) => () => o!.admin,
          (o) => (v) => o!.admin = v,
          obj,
          false,
        );
      case 'empresa':
        return FieldReflection<Usuario, Empresa?>(
          this,
          _UsuarioBase,
          __TR<Empresa>(Empresa),
          'empresa',
          true,
          (o) => () => o!.empresa,
          (o) => (v) => o!.empresa = v,
          obj,
          false,
        );
      case 'valorpagamento':
        return FieldReflection<Usuario, double?>(
          this,
          _UsuarioBase,
          __TR.tDouble,
          'valorPagamento',
          true,
          (o) => () => o!.valorPagamento,
          (o) => (v) => o!.valorPagamento = v,
          obj,
          false,
        );
      case 'datapagamento':
        return FieldReflection<Usuario, DateTime?>(
          this,
          _UsuarioBase,
          __TR<DateTime>(DateTime),
          'dataPagamento',
          true,
          (o) => () => o!.dataPagamento,
          (o) => (v) => o!.dataPagamento = v,
          obj,
          false,
        );
      case 'ultimopagamentocompleto':
        return FieldReflection<Usuario, DateTime?>(
          this,
          _UsuarioBase,
          __TR<DateTime>(DateTime),
          'ultimoPagamentoCompleto',
          true,
          (o) => () => o!.ultimoPagamentoCompleto,
          (o) => (v) => o!.ultimoPagamentoCompleto = v,
          obj,
          false,
        );
      case 'ultimopagamentogerado':
        return FieldReflection<Usuario, DateTime?>(
          this,
          _UsuarioBase,
          __TR<DateTime>(DateTime),
          'ultimoPagamentoGerado',
          true,
          (o) => () => o!.ultimoPagamentoGerado,
          (o) => (v) => o!.ultimoPagamentoGerado = v,
          obj,
          false,
        );
      case 'imagem':
        return FieldReflection<Usuario, Imagem?>(
          this,
          _UsuarioBase,
          __TR<Imagem>(Imagem),
          'imagem',
          true,
          (o) => () => o!.imagem,
          (o) => (v) => o!.imagem = v,
          obj,
          false,
        );
      case 'latitude':
        return FieldReflection<Usuario, double>(
          this,
          _UsuarioBase,
          __TR.tDouble,
          'latitude',
          false,
          (o) => () => o!.latitude,
          (o) => (v) => o!.latitude = v,
          obj,
          false,
          const [observable],
        );
      case 'longitude':
        return FieldReflection<Usuario, double>(
          this,
          _UsuarioBase,
          __TR.tDouble,
          'longitude',
          false,
          (o) => () => o!.longitude,
          (o) => (v) => o!.longitude = v,
          obj,
          false,
          const [observable],
        );
      case 'emailverificado':
        return FieldReflection<Usuario, bool>(
          this,
          _UsuarioBase,
          __TR.tBool,
          'emailVerificado',
          false,
          (o) => () => o!.emailVerificado,
          (o) => (v) => o!.emailVerificado = v,
          obj,
          false,
        );
      case 'id':
        return FieldReflection<Usuario, String?>(
          this,
          Entidade,
          __TR.tString,
          'id',
          true,
          (o) => () => o!.id,
          (o) => (v) => o!.id = v,
          obj,
          false,
        );
      case 'id2':
        return FieldReflection<Usuario, int?>(
          this,
          Entidade,
          __TR.tInt,
          'id2',
          true,
          (o) => () => o!.id2,
          (o) => (v) => o!.id2 = v,
          obj,
          false,
        );
      case 'ativa':
        return FieldReflection<Usuario, bool?>(
          this,
          Entidade,
          __TR.tBool,
          'ativa',
          true,
          (o) => () => o!.ativa,
          (o) => (v) => o!.ativa = v,
          obj,
          false,
        );
      case 'datacriacao':
        return FieldReflection<Usuario, DateTime?>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataCriacao',
          true,
          (o) => () => o!.dataCriacao,
          (o) => (v) => o!.dataCriacao = v,
          obj,
          false,
        );
      case 'dataedicao':
        return FieldReflection<Usuario, DateTime?>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataEdicao',
          true,
          (o) => () => o!.dataEdicao,
          (o) => (v) => o!.dataEdicao = v,
          obj,
          false,
        );
      case 'datadelecao':
        return FieldReflection<Usuario, DateTime?>(
          this,
          Entidade,
          __TR<DateTime>(DateTime),
          'dataDelecao',
          true,
          (o) => () => o!.dataDelecao,
          (o) => (v) => o!.dataDelecao = v,
          obj,
          false,
        );
      case 'context':
        return FieldReflection<Usuario, ReactiveContext>(
          this,
          Store,
          __TR<ReactiveContext>(ReactiveContext),
          'context',
          false,
          (o) => () => o!.context,
          null,
          obj,
          false,
        );
      default:
        return null;
    }
  }

  @override
  Map<String, dynamic> getFieldsValues(Usuario? obj,
      {bool withHashCode = false}) {
    obj ??= object;
    return <String, dynamic>{
      'nome': obj?.nome,
      'senha': obj?.senha,
      'username': obj?.username,
      'email': obj?.email,
      'cpfCnpj': obj?.cpfCnpj,
      'dataNascimento': obj?.dataNascimento,
      'enderecoLogradouroRua': obj?.enderecoLogradouroRua,
      'numeroEndereco': obj?.numeroEndereco,
      'bairro': obj?.bairro,
      'cep': obj?.cep,
      'cidade': obj?.cidade,
      'estado': obj?.estado,
      'complemento': obj?.complemento,
      'telefone': obj?.telefone,
      'admin': obj?.admin,
      'empresa': obj?.empresa,
      'valorPagamento': obj?.valorPagamento,
      'dataPagamento': obj?.dataPagamento,
      'ultimoPagamentoCompleto': obj?.ultimoPagamentoCompleto,
      'ultimoPagamentoGerado': obj?.ultimoPagamentoGerado,
      'imagem': obj?.imagem,
      'latitude': obj?.latitude,
      'longitude': obj?.longitude,
      'emailVerificado': obj?.emailVerificado,
      'id': obj?.id,
      'id2': obj?.id2,
      'ativa': obj?.ativa,
      'dataCriacao': obj?.dataCriacao,
      'dataEdicao': obj?.dataEdicao,
      'dataDelecao': obj?.dataDelecao,
      'context': obj?.context,
      if (withHashCode) 'hashCode': obj?.hashCode,
    };
  }

  static const List<String> _staticFieldsNames = const <String>[];

  @override
  List<String> get staticFieldsNames => _staticFieldsNames;

  @override
  StaticFieldReflection<Usuario, T>? staticField<T>(String fieldName) => null;

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
    'toJson',
    'toString'
  ];

  @override
  List<String> get methodsNames => _methodsNames;

  static final Map<String, MethodReflection<Usuario, dynamic>>
      _methodsNoObject = {};

  final Map<String, MethodReflection<Usuario, dynamic>> _methodsObject = {};

  @override
  MethodReflection<Usuario, R>? method<R>(String methodName, [Usuario? obj]) {
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

  MethodReflection<Usuario, R>? _methodNoObjectImpl<R>(String methodName) {
    final m = _methodsNoObject[methodName];
    if (m != null) {
      return m as MethodReflection<Usuario, R>;
    }
    final m2 = _methodImpl(methodName, null);
    if (m2 == null) return null;
    _methodsNoObject[methodName] = m2;
    return m2 as MethodReflection<Usuario, R>;
  }

  MethodReflection<Usuario, R>? _methodObjectImpl<R>(String methodName) {
    final m = _methodsObject[methodName];
    if (m != null) {
      return m as MethodReflection<Usuario, R>;
    }
    var m2 = _methodNoObjectImpl<R>(methodName);
    if (m2 == null) return null;
    m2 = m2.withObject(object!);
    _methodsObject[methodName] = m2;
    return m2;
  }

  MethodReflection<Usuario, dynamic>? _methodImpl(
      String methodName, Usuario? obj) {
    obj ??= object;

    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'reflect':
        return MethodReflection<Usuario, ClassReflection<dynamic>>(
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
        return MethodReflection<Usuario, Map<String, dynamic>>(
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
        return MethodReflection<Usuario, Map<String, dynamic>>(
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
        return MethodReflection<Usuario, Map<String, dynamic>>(
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
        return MethodReflection<Usuario, String>(
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
        return MethodReflection<Usuario, String>(
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
        return MethodReflection<Usuario, dynamic>(
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
        return MethodReflection<Usuario, dynamic>(
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
        return MethodReflection<Usuario, List<dynamic>>(
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
        return MethodReflection<Usuario, List<dynamic>>(
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
      case 'tostring':
        return MethodReflection<Usuario, String>(
            this,
            _$Usuario,
            'toString',
            __TR.tString,
            false,
            (o) => o!.toString,
            obj,
            null,
            null,
            null,
            const [override]);
      default:
        return null;
    }
  }

  static const List<String> _staticMethodsNames = const <String>['fromJson'];

  @override
  List<String> get staticMethodsNames => _staticMethodsNames;

  static final Map<String, StaticMethodReflection<Usuario, dynamic>>
      _staticMethods = {};

  @override
  StaticMethodReflection<Usuario, R>? staticMethod<R>(String methodName) {
    var m = _staticMethods[methodName];
    if (m != null) {
      return m as StaticMethodReflection<Usuario, R>;
    }
    m = _staticMethodImpl(methodName);
    if (m == null) return null;
    _staticMethods[methodName] = m;
    return m as StaticMethodReflection<Usuario, R>;
  }

  StaticMethodReflection<Usuario, dynamic>? _staticMethodImpl(
      String methodName) {
    var lc = methodName.trim().toLowerCase();

    switch (lc) {
      case 'fromjson':
        return StaticMethodReflection<Usuario, dynamic>(
            this,
            Usuario,
            'fromJson',
            __TR.tDynamic,
            false,
            () => Usuario.fromJson,
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

extension Usuario$reflectionExtension on Usuario {
  /// Returns a [ClassReflection] for type [Usuario]. (Generated by [ReflectionFactory])
  ClassReflection<Usuario> get reflection => Usuario$reflection(this);

  /// Returns a JSON [Map] for type [Usuario]. (Generated by [ReflectionFactory])
  Map<String, dynamic>? toJsonMap({bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonMap(duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns an encoded JSON [String] for type [Usuario]. (Generated by [ReflectionFactory])
  String toJsonEncoded(
          {bool pretty = false, bool duplicatedEntitiesAsID = false}) =>
      reflection.toJsonEncoded(
          pretty: pretty, duplicatedEntitiesAsID: duplicatedEntitiesAsID);

  /// Returns a JSON for type [Usuario] using the class fields. (Generated by [ReflectionFactory])
  Object? toJsonFromFields({bool duplicatedEntitiesAsID = false}) => reflection
      .toJsonFromFields(duplicatedEntitiesAsID: duplicatedEntitiesAsID);
}

List<Reflection> _listSiblingsReflection() => <Reflection>[
      Usuario$reflection(),
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
