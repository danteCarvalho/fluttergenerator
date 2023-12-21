// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map json) => Usuario()
  ..id = json['id'] as String?
  ..id2 = json['id2'] as int?
  ..ativa = json['ativa'] as bool?
  ..dataCriacao = json['dataCriacao'] == null
      ? null
      : DateTime.parse(json['dataCriacao'] as String)
  ..dataEdicao = json['dataEdicao'] == null
      ? null
      : DateTime.parse(json['dataEdicao'] as String)
  ..dataDelecao = json['dataDelecao'] == null
      ? null
      : DateTime.parse(json['dataDelecao'] as String)
  ..nome = json['nome'] as String?
  ..senha = json['senha'] as String?
  ..email = json['email'] as String?
  ..cpf = json['cpf'] as String?
  ..dataNascimento = json['dataNascimento'] == null
      ? null
      : DateTime.parse(json['dataNascimento'] as String)
  ..endereco = json['endereco'] as String?
  ..cep = json['cep'] as String?
  ..cidade = json['cidade'] as String?
  ..estado = json['estado'] as String?
  ..complemento = json['complemento'] as String?
  ..telefone = json['telefone'] as String?
  ..admin = json['admin'] as bool?
  ..empresa =
      json['empresa'] == null ? null : Empresa.fromJson(json['empresa'] as Map)
  ..valorPagamento = (json['valorPagamento'] as num?)?.toDouble()
  ..dataPagamento = json['dataPagamento'] == null
      ? null
      : DateTime.parse(json['dataPagamento'] as String)
  ..ultimoPagamentoCompleto = json['ultimoPagamentoCompleto'] == null
      ? null
      : DateTime.parse(json['ultimoPagamentoCompleto'] as String)
  ..ultimoPagamentoGerado = json['ultimoPagamentoGerado'] == null
      ? null
      : DateTime.parse(json['ultimoPagamentoGerado'] as String);

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
      'id': instance.id,
      'id2': instance.id2,
      'ativa': instance.ativa,
      'dataCriacao': instance.dataCriacao?.toIso8601String(),
      'dataEdicao': instance.dataEdicao?.toIso8601String(),
      'dataDelecao': instance.dataDelecao?.toIso8601String(),
      'nome': instance.nome,
      'senha': instance.senha,
      'email': instance.email,
      'cpf': instance.cpf,
      'dataNascimento': instance.dataNascimento?.toIso8601String(),
      'endereco': instance.endereco,
      'cep': instance.cep,
      'cidade': instance.cidade,
      'estado': instance.estado,
      'complemento': instance.complemento,
      'telefone': instance.telefone,
      'admin': instance.admin,
      'empresa': instance.empresa?.toJson(),
      'valorPagamento': instance.valorPagamento,
      'dataPagamento': instance.dataPagamento?.toIso8601String(),
      'ultimoPagamentoCompleto':
          instance.ultimoPagamentoCompleto?.toIso8601String(),
      'ultimoPagamentoGerado':
          instance.ultimoPagamentoGerado?.toIso8601String(),
    };

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

mixin _$Serial {
  Map<String, dynamic> classToMap() {
    return _$UsuarioToJson(this as Usuario);
  }

  Map<String, dynamic> toJson() {
    return _$UsuarioToJson(this as Usuario);
  }

  String classToString() {
    return json.encode(this as Usuario);
  }

  String listClassToString(List list) {
    return json.encode(list);
  }

  Map<String, dynamic> dbMaptoClassMap(Map original) {
    Map<String, dynamic> map2 = {};
    List allFields = Usuario().reflect().allFields();
    for (var obj in allFields) {
      var name = obj.name;
      if (original.containsKey(name)) {
        map2[name] = original[name];
      } else if (original.containsKey(name.toString().toLowerCase())) {
        map2[name] = original[name.toString().toLowerCase()];
      }
    }
    return map2;
  }

  Usuario stringToClass(String string) {
    Map map2 = json.decode(string);
    map2 = dbMaptoClassMap(map2);
    return _$UsuarioFromJson(map2);
  }

  Usuario mapToClass(Map map) {
    Map map2 = dbMaptoClassMap(map);
    return _$UsuarioFromJson(map2);
  }

  List<Usuario> listMapToListClass(List list) {
    List<Usuario> list2 = [];
    for (var obj in list) {
      list2.add(Usuario.fromJson(obj));
    }
    return list2;
  }

  List<Usuario> listStringToListClass(String listString) {
    var list = json.decode(listString);
    return listMapToListClass(list);
  }

  ClassReflection<Usuario> reflect() {
    return Usuario().reflection;
  }
}

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Usuario on _UsuarioBase, Store {
  @override
  String toString() {
    return '''

    ''';
  }
}
