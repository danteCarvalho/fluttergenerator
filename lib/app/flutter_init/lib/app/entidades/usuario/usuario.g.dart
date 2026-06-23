// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map json) => Usuario()
  ..id = json['id'] != null ? json['id'] as String : ""
  ..id2 = json['id2'] != null ? (json['id2'] as num).toInt() : 0
  ..ativa = json['ativa'] != null ? json['ativa'] as bool : false
  ..dataCriacao = json['dataCriacao'] != null
      ? DateTime.parse(json['dataCriacao'] as String)
      : initialTime
  ..dataEdicao = json['dataEdicao'] != null
      ? DateTime.parse(json['dataEdicao'] as String)
      : initialTime
  ..dataDelecao = json['dataDelecao'] != null
      ? DateTime.parse(json['dataDelecao'] as String)
      : initialTime
  ..nome = json['nome'] != null ? json['nome'] as String : ""
  ..senha = json['senha'] != null ? json['senha'] as String : ""
  ..username = json['username'] != null ? json['username'] as String? : null
  ..email = json['email'] != null ? json['email'] as String : ""
  ..cpfCnpj = json['cpfCnpj'] != null ? json['cpfCnpj'] as String? : null
  ..dataNascimento = json['dataNascimento'] != null
      ? DateTime.parse(json['dataNascimento'] as String)
      : initialTime
  ..enderecoLogradouroRua = json['enderecoLogradouroRua'] != null
      ? json['enderecoLogradouroRua'] as String
      : ""
  ..numeroEndereco = json['numeroEndereco'] != null
      ? json['numeroEndereco'] as String
      : ""
  ..bairro = json['bairro'] != null ? json['bairro'] as String : ""
  ..cep = json['cep'] != null ? json['cep'] as String : ""
  ..cidade = json['cidade'] != null ? json['cidade'] as String : ""
  ..estado = json['estado'] != null ? json['estado'] as String : ""
  ..complemento = json['complemento'] != null
      ? json['complemento'] as String
      : ""
  ..telefone = json['telefone'] != null ? json['telefone'] as String : ""
  ..admin = json['admin'] != null ? json['admin'] as bool : false
  ..empresa = json['empresa'] != null
      ? Empresa.fromJson(json['empresa'] as Map)
      : null
  ..valorPagamento = json['valorPagamento'] != null
      ? (json['valorPagamento'] as num).toDouble()
      : null
  ..dataPagamento = json['dataPagamento'] != null
      ? DateTime.parse(json['dataPagamento'] as String)
      : initialTime
  ..ultimoPagamentoCompleto = json['ultimoPagamentoCompleto'] != null
      ? DateTime.parse(json['ultimoPagamentoCompleto'] as String)
      : initialTime
  ..ultimoPagamentoGerado = json['ultimoPagamentoGerado'] != null
      ? DateTime.parse(json['ultimoPagamentoGerado'] as String)
      : initialTime
  ..imagem = json['imagem'] != null
      ? Imagem.fromJson(json['imagem'] as Map)
      : null
  ..latitude = json['latitude'] != null
      ? (json['latitude'] as num).toDouble()
      : 0
  ..longitude = json['longitude'] != null
      ? (json['longitude'] as num).toDouble()
      : 0
  ..emailVerificado = json['emailVerificado'] != null
      ? json['emailVerificado'] as bool
      : false;

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{
  'id': instance.id,
  'id2': instance.id2,
  'ativa': instance.ativa,
  'dataCriacao': instance.dataCriacao.toIso8601String(),
  'dataEdicao': instance.dataEdicao.toIso8601String(),
  'dataDelecao': instance.dataDelecao.toIso8601String(),
  'nome': instance.nome,
  'senha': instance.senha,
  'username': instance.username,
  'email': instance.email,
  'cpfCnpj': instance.cpfCnpj,
  'dataNascimento': instance.dataNascimento.toIso8601String(),
  'enderecoLogradouroRua': instance.enderecoLogradouroRua,
  'numeroEndereco': instance.numeroEndereco,
  'bairro': instance.bairro,
  'cep': instance.cep,
  'cidade': instance.cidade,
  'estado': instance.estado,
  'complemento': instance.complemento,
  'telefone': instance.telefone,
  'admin': instance.admin,
  'empresa': instance.empresa?.toJson(),
  'valorPagamento': instance.valorPagamento,
  'dataPagamento': instance.dataPagamento.toIso8601String(),
  'ultimoPagamentoCompleto': instance.ultimoPagamentoCompleto.toIso8601String(),
  'ultimoPagamentoGerado': instance.ultimoPagamentoGerado.toIso8601String(),
  'imagem': instance.imagem?.toJson(),
  'latitude': instance.latitude,
  'longitude': instance.longitude,
  'emailVerificado': instance.emailVerificado,
};

Usuario _$UsuarioFromMap(Map map) => Usuario()
  ..id = map['id'] != null ? map['id'] : ""
  ..id2 = map['id2'] != null ? map['id2'] : 0
  ..ativa = map['ativa'] != null ? map['ativa'] : false
  ..dataCriacao = map['dataCriacao'] != null ? map['dataCriacao'] : initialTime
  ..dataEdicao = map['dataEdicao'] != null ? map['dataEdicao'] : initialTime
  ..dataDelecao = map['dataDelecao'] != null ? map['dataDelecao'] : initialTime
  ..nome = map['nome'] != null ? map['nome'] : ""
  ..senha = map['senha'] != null ? map['senha'] : ""
  ..username = map['username'] != null ? map['username'] : null
  ..email = map['email'] != null ? map['email'] : ""
  ..cpfCnpj = map['cpfCnpj'] != null ? map['cpfCnpj'] : null
  ..dataNascimento = map['dataNascimento'] != null
      ? map['dataNascimento']
      : initialTime
  ..enderecoLogradouroRua = map['enderecoLogradouroRua'] != null
      ? map['enderecoLogradouroRua']
      : ""
  ..numeroEndereco = map['numeroEndereco'] != null ? map['numeroEndereco'] : ""
  ..bairro = map['bairro'] != null ? map['bairro'] : ""
  ..cep = map['cep'] != null ? map['cep'] : ""
  ..cidade = map['cidade'] != null ? map['cidade'] : ""
  ..estado = map['estado'] != null ? map['estado'] : ""
  ..complemento = map['complemento'] != null ? map['complemento'] : ""
  ..telefone = map['telefone'] != null ? map['telefone'] : ""
  ..admin = map['admin'] != null ? map['admin'] : false
  ..empresa = map['empresa'] != null ? map['empresa'] : null
  ..valorPagamento = map['valorPagamento'] != null
      ? map['valorPagamento']
      : null
  ..dataPagamento = map['dataPagamento'] != null
      ? map['dataPagamento']
      : initialTime
  ..ultimoPagamentoCompleto = map['ultimoPagamentoCompleto'] != null
      ? map['ultimoPagamentoCompleto']
      : initialTime
  ..ultimoPagamentoGerado = map['ultimoPagamentoGerado'] != null
      ? map['ultimoPagamentoGerado']
      : initialTime
  ..imagem = map['imagem'] != null ? map['imagem'] : null
  ..latitude = map['latitude'] != null ? map['latitude'] : 0
  ..longitude = map['longitude'] != null ? map['longitude'] : 0
  ..emailVerificado = map['emailVerificado'] != null
      ? map['emailVerificado']
      : false;

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

  Map<String, dynamic> matchKeysToFields(Map original) {
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
    map2 = matchKeysToFields(map2);
    return _$UsuarioFromJson(map2);
  }

  Usuario mapToClass(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$UsuarioFromJson(map2);
  }

  Usuario mapToClass2(Map map) {
    Map map2 = matchKeysToFields(map);
    return _$UsuarioFromMap(map2);
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
  late final _$nomeAtom = Atom(name: '_UsuarioBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$senhaAtom = Atom(name: '_UsuarioBase.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$emailAtom = Atom(name: '_UsuarioBase.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$latitudeAtom = Atom(
    name: '_UsuarioBase.latitude',
    context: context,
  );

  @override
  double get latitude {
    _$latitudeAtom.reportRead();
    return super.latitude;
  }

  @override
  set latitude(double value) {
    _$latitudeAtom.reportWrite(value, super.latitude, () {
      super.latitude = value;
    });
  }

  late final _$longitudeAtom = Atom(
    name: '_UsuarioBase.longitude',
    context: context,
  );

  @override
  double get longitude {
    _$longitudeAtom.reportRead();
    return super.longitude;
  }

  @override
  set longitude(double value) {
    _$longitudeAtom.reportWrite(value, super.longitude, () {
      super.longitude = value;
    });
  }

  @override
  String toString() {
    return '''
nome: ${nome},
senha: ${senha},
email: ${email},
latitude: ${latitude},
longitude: ${longitude}
    ''';
  }
}
