import 'package:postgres/postgres.dart';

import '../outros/config.dart';

Connection? connection;

Future<Connection> getPostgresConnection() async {
  if (connection != null) {
    return connection!;
  } else {
    connection = await Connection.open(
        Endpoint(
          host: config.ipBanco,
          port: config.portaBanco,
          database: config.banco,
          username: config.usuario,
          password: config.senha,
        ),
        settings: ConnectionSettings(sslMode: config.sslBanco ? SslMode.require : SslMode.disable));
    return connection!;
  }
}

selectPostgues(String sql) async {
  Connection connection = await getPostgresConnection();
  var results = await connection.execute(sql);
  List<Map> resultados2 = [];
  for (var obj in results) {
    resultados2.add(obj.toColumnMap());
  }
  return resultados2;
}
