// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario.dart';

// **************************************************************************
// MyCustomGenerator
// **************************************************************************

Usuario _$UsuarioFromJson(Map json) => Usuario();

Map<String, dynamic> _$UsuarioToJson(Usuario instance) => <String, dynamic>{};

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
