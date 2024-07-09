import 'package:postgres/postgres.dart';

import '../outros/config/config.dart';

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
    print("${endpoint.host}:${endpoint.port}" );
    connection = await Connection.open(endpoint, settings: ConnectionSettings(sslMode: config.sslBanco ? SslMode.require : SslMode.disable));
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
