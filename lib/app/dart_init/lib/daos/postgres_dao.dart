import 'package:postgres/postgres.dart';

import '../outros/config.dart';

PostgreSQLConnection? connection;

Future<PostgreSQLConnection> getPostgresConnection() async {
  if (connection != null) {
    return connection!;
  } else {
    connection = PostgreSQLConnection(config.ipBanco, config.portaBanco, config.banco,
        username: config.usuario, password: config.senha, useSSL: config.sslBanco);
    await connection!.open();
    return connection!;
  }
}

selectPostgues(String sql) async {
  PostgreSQLConnection connection = await getPostgresConnection();
  var results = await connection.mappedResultsQuery(sql);
  List<Map> resultados2 = [];
  for (var obj in results) {
    Map map = {};
    for (var element in obj.values) {
      map.addAll(element);
    }
    resultados2.add(map);
  }
  return resultados2;
}
