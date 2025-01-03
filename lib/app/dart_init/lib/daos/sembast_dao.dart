import 'dart:io';

import 'package:dartutils/dartutils.dart';
import 'package:sembast/sembast_io.dart';
import 'package:sembast_sqflite/sembast_sqflite.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart' as sqflite_ffi;
import 'package:uuid/uuid.dart';

import '../entidades/entidade.dart';
import '../outros/config/config.dart';
import '../outros/excecoes.dart';

Map mapStore = {};
Database? db;

initSembast({bool useSqflite = false}) async {
  if (db != null) {
    return;
  }
  DatabaseFactory databaseFactory = getDatabaseFactory(useSqflite: useSqflite);
  String dbPath = await getDbPath();
  print("db path $dbPath");
  db = await databaseFactory.openDatabase(dbPath);
}

closeSembast() async {
  var banco = db;
  if (banco != null) {
    await banco.close();
    db = null;
  }
}

getDbPath() async {
  var home = Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];
  if (home != null) {
    var dir = Directory(home);
    return "${dir.path}/${config.sembastDbName}";
  }
}

deleteDbSembast() async {
  var banco = db;
  if (banco != null) {
    await banco.close();
    db = null;
  }
  DatabaseFactory databaseFactory = getDatabaseFactory();
  var dbPath = await getDbPath();
  await databaseFactory.deleteDatabase(dbPath);
}

getDatabaseFactory({bool useSqflite = false}) {
  DatabaseFactory databaseFactory;
  if (useSqflite) {
    databaseFactory = getDatabaseFactorySqflite(sqflite_ffi.databaseFactoryFfi);
  } else {
    databaseFactory = databaseFactoryIo;
  }
  return databaseFactory;
}

StoreRef<String, Map<String, Object?>> getStore<T extends Entidade>(T entidade) {
  var nome = entidade.runtimeType.toString();

  return stringMapStoreFactory.store(nome);
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
  await store.record(entidade.id).put(db!, classToMap);
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

deleteSembast<T extends Entidade>(T entidade) async {
  var store = getStore(entidade);
  await store.record(entidade.id).delete(db!);
}
