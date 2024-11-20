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
  ..numeroEndereco =
      json['numeroEndereco'] != null ? json['numeroEndereco'] as String : ""
  ..bairro = json['bairro'] != null ? json['bairro'] as String : ""
  ..cep = json['cep'] != null ? json['cep'] as String : ""
  ..cidade = json['cidade'] != null ? json['cidade'] as String : ""
  ..estado = json['estado'] != null ? json['estado'] as String : ""
  ..complemento =
      json['complemento'] != null ? json['complemento'] as String : ""
  ..telefone = json['telefone'] != null ? json['telefone'] as String : ""
  ..admin = json['admin'] != null ? json['admin'] as bool : false
  ..empresa =
      json['empresa'] != null ? Empresa.fromJson(json['empresa'] as Map) : null
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
  ..preferenciaNome =
      json['preferenciaNome'] != null ? json['preferenciaNome'] as String : ""
  ..imagem =
      json['imagem'] != null ? Imagem.fromJson(json['imagem'] as Map) : null
  ..latitude =
      json['latitude'] != null ? (json['latitude'] as num).toDouble() : 0
  ..longitude =
      json['longitude'] != null ? (json['longitude'] as num).toDouble() : 0
  ..emailVerificado =
      json['emailVerificado'] != null ? json['emailVerificado'] as bool : false;

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
      'ultimoPagamentoCompleto':
          instance.ultimoPagamentoCompleto.toIso8601String(),
      'ultimoPagamentoGerado': instance.ultimoPagamentoGerado.toIso8601String(),
      'preferenciaNome': instance.preferenciaNome,
      'imagem': instance.imagem?.toJson(),
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'emailVerificado': instance.emailVerificado,
    };

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
