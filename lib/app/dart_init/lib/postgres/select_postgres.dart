import 'get_postgres_connection.dart';
import 'package:postgres/postgres.dart';

selectPostgues(String sql) async {
 PostgreSQLConnection connection = await getPostgresConnection();
 var results = await connection.mappedResultsQuery(sql);
 List<Map> resultados2 = [];
 for(var obj in results){
  Map map = {};
  for (var element in obj.values) {
   map.addAll(element);
  }
  resultados2.add(map);
 }
 return resultados2;
}
