import 'package:dartutils/dartutils.dart';
import 'package:postgres/postgres.dart';

import '../entidades/entidade.dart';
import '../outros/config/config.dart';
import '../outros/excecoes.dart';
import 'hasura_dao.dart';

Connection? connection;

Future<Connection> getPostgresConnection() async {
  if (connection != null) {
    return connection!;
  } else {
    Endpoint endpoint = Endpoint(
      host: config.ipBanco,
      port: config.portaBanco,
      database: config.banco,
      username: config.usuario,
      password: config.senha,
    );
    print("${endpoint.host}:${endpoint.port}");
    connection = await Connection.open(endpoint,
        settings: ConnectionSettings(sslMode: config.sslBanco ? SslMode.require : SslMode.disable));
    return connection!;
  }
}

Future<List<Map<String, dynamic>>> executePostgres(String sql, {Map<String, dynamic>? parameters, Session? session}) async {
  Session executor = session ?? await getPostgresConnection();
  Result results;
  if (parameters != null) {
    results = await executor.execute(Sql.named(sql), parameters: parameters);
  } else {
    results = await executor.execute(sql);
  }
  List<Map<String, dynamic>> resultados2 = [];
  for (var obj in results) {
    resultados2.add(obj.toColumnMap());
  }
  return resultados2;
}

Future<T> selectOnePostgres<T extends Entidade>(String sql, T entidade, {Map<String, dynamic>? parameters, Session? session}) async {
  var decode = await executePostgres(sql, parameters: parameters, session: session);
  if (nuloOuvazio([decode])) {
    throw NaoEncontrado(entidade.runtimeType.toString());
  }
  if (decode.length > 1) {
    throw PararError("Mais de uma entidade");
  }
  T retorno = entidade.mapToClass(decode[0]);
  return retorno;
}

Future<T> selectByIdPostgres<T extends Entidade>(dynamic id, T entidade, {Session? session}) async {
  String nomeentidade = entidade.runtimeType.toString().toLowerCase();
  var sql = "SELECT * FROM $nomeentidade WHERE id = @id";
  return selectOnePostgres(sql, entidade, parameters: {"id": id}, session: session);
}

Future<List<T>> selectListPostgres<T extends Entidade>(String sql, T entidade, {Map<String, dynamic>? parameters, Session? session}) async {
  var decode = await executePostgres(sql, parameters: parameters, session: session);
  if (nuloOuvazio([decode])) {
    throw NaoEncontrado(entidade.runtimeType.toString());
  }

  List<T> retorno = [];
  for (var obj in decode) {
    retorno.add(entidade.mapToClass(obj));
  }
  return retorno;
}

Future<T> insertPostgres<T extends Entidade>(T entidade, { Session? session}) async {
  String nomeentidade = entidade.runtimeType.toString().toLowerCase();
  var data = DateTime.now();
  entidade.dataCriacao = data;
  entidade.dataEdicao = data;
  entidade.ativa = true;

  Map obj = entidade.classToMap();
  trocarNomeEntidades(entidade, obj);
  obj.remove("id");
  obj.remove("id2");
  
  obj = fieldsToLowerCase(obj);


  var columns = obj.keys.join(", ");
  var values = obj.keys.map((e) => "@$e").join(", ");
  var sql = "INSERT INTO $nomeentidade ($columns) VALUES ($values) RETURNING *";

  var result = await executePostgres(sql, parameters: obj.cast<String, dynamic>(), session: session);
  return entidade.mapToClass(result.first);
}

Future<T> updatePostgres<T extends Entidade>(T entidade, {String? updateFields, Session? session}) async {
  String nomeentidade = entidade.runtimeType.toString().toLowerCase();
  if (entidade.id.isEmpty) {
    throw PararError("update sem id");
  }
  entidade.dataEdicao = DateTime.now();
  Map obj = entidade.classToMap();
  trocarNomeEntidades(entidade, obj);
  
  obj = fieldsToLowerCase(obj);

  if (updateFields != null) {
    obj = manterCampos(updateFields, obj, "dataEdicao");
  }
  
  var setClause = obj.keys.where((k) => k != "id").map((k) => "$k = @$k").join(", ");
  var sql = "UPDATE $nomeentidade SET $setClause WHERE id = @id RETURNING *";
  Map<String, dynamic> parameters = obj.cast<String, dynamic>();
  parameters["id"] = entidade.id;
  var result = await executePostgres(sql, parameters:parameters , session: session);
  return entidade.mapToClass2(result.first);
}

Future<T> runTransactionPostgres<T>(Future<T> Function(Session session) action) async {
  Connection conn = await getPostgresConnection();
  return await conn.runTx((session) async {
    return await action(session);
  });
}
