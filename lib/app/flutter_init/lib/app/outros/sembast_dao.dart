import 'package:dartutils/dartutils.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sembast/sembast.dart';
import 'package:uuid/uuid.dart';

import '../app_store.dart';
import '../outros/excecoes.dart';
import '../entidades/entidade.dart';

Map mapStore = {};

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
  AppStore app = Modular.get();
  var store = getStore(entidade);
  var classToMap = entidade.classToMap();
  await store.record(entidade.id!).put(app.db!, classToMap);
}

Future<T> selectByIdSembast<T extends Entidade>(id, T entidade) async {
  var store = getStore(entidade);
  AppStore app = Modular.get();
  var lista = await store.find(app.db!, finder: Finder(filter: Filter.equals("id", id)));
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
  AppStore app = Modular.get();
  var lista = await store.find(app.db!, finder: finder);
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
  AppStore app = Modular.get();
  var lista = await store.find(app.db!, finder: finder);
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
