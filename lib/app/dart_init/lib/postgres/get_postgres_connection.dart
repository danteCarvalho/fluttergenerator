import '../outros/config.dart';
import 'package:postgres/postgres.dart';

PostgreSQLConnection? connection;

Future<PostgreSQLConnection> getPostgresConnection() async {
  var connection2 = connection;
  if (connection2 == null) {
    connection2 = PostgreSQLConnection(
        config.ipBanco, config.portaBanco, config.banco,
        username: config.usuario, password: config.senha,useSSL: config.sslBanco);
    connection = connection2;
    await connection?.open();
    return connection2;
  } else {
    return connection2;
  }
}
