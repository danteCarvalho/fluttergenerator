import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_web/sembast_web.dart';
import 'package:uuid/uuid.dart';

import '../entidades/entidade.dart';
import '../outros/config.dart';
import '../outros/excecoes.dart';

Map mapStore = {};
Database? db;

initSembast() async {
  if (db != null) {
    return;
  }
  if (kIsWeb) {
    db = await databaseFactoryWeb.openDatabase(config.sembastDbName);
  } else if (Platform.isAndroid) {
    var dir = await getExternalStorageDirectory();
    if (dir != null) {
      await dir.create(recursive: true);
      var dbPath = "${dir.path}/${config.sembastDbName}";
      db = await databaseFactoryIo.openDatabase(dbPath);
    }
  } else {
    var home = Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];
    if (home != null) {
      var dir = Directory(home);
      var dbPath = "${dir.path}/${config.sembastDbName}";
      db = await databaseFactoryIo.openDatabase(dbPath);
    }
  }
}

StoreRef<String, Map<String, Object?>> getStore<T extends Entidade>(T entidade) {
  var nome = entidade.runtimeType.toString();
  if (mapStore.containsKey(nome)) {
    return mapStore[nome];
  } else {
    mapStore[nome] = stringMapStoreFactory.store(nome);
    return mapStore[nome];
  }
}

insertSembast<T extends Entidade>(T entidade) async {
  var date = DateTime.now();
  entidade.id = const Uuid().v4();
  entidade.ativa = true;
  entidade.dataCriacao = date;
  entidade.dataEdicao = date;
  await _insertUpdate(entidade);
}

updateSembast<T extends Entidade>(T entidade) async {
  entidade.dataEdicao = DateTime.now();
  await _insertUpdate(entidade);
}

_insertUpdate<T extends Entidade>(T entidade) async {
  var store = getStore(entidade);
  var classToMap = entidade.classToMap();
  await store.record(entidade.id!).put(db!, classToMap);
}

Future<T> selectByIdSembast<T extends Entidade>(id, T entidade) async {
  var store = getStore(entidade);
  var lista = await store.find(db!, finder: Finder(filter: Filter.equals("id", id)));
  if (nuloOuvazio([lista])) {
    throw NaoEncontrado(entidade.runtimeType.toString());
  }
  if (lista.length > 1) {
    throw PararError("Mais de uma entidade");
  }
  T retorno = entidade.mapToClass(lista[0].value);
  return retorno;
}

Future<T> selectOneSembast<T extends Entidade>(Finder finder, T entidade) async {
  var store = getStore(entidade);
  var lista = await store.find(db!, finder: finder);
  if (nuloOuvazio([lista])) {
    throw NaoEncontrado(entidade.runtimeType.toString());
  }
  if (lista.length > 1) {
    throw PararError("Mais de uma entidade");
  }
  T retorno = entidade.mapToClass(lista[0].value);
  return retorno;
}

Future<List<T>> selectListSembast<T extends Entidade>(Finder finder, T entidade, {Function? init}) async {
  var store = getStore(entidade);
  var lista = await store.find(db!, finder: finder);
  if (nuloOuvazio([lista])) {
    throw NaoEncontrado(entidade.runtimeType.toString());
  }
  List<T> lista2 = [];
  for (var obj in lista) {
    T item = entidade.mapToClass(obj.value);
    if (init != null) {
      await init.call(item);
    }
    lista2.add(item);
  }
  return lista2;
}




deleteSembast() async {
  Database? database = db;
  if (database == null) {
    return;
  } else {
    await database.close();
  }
  db = null;
  if (kIsWeb) {
    databaseFactoryWeb.deleteDatabase(database.path);
  } else {
    databaseFactoryIo.deleteDatabase(database.path);
  }
}