import 'package:http/http.dart';

import '../daos/hasura_dao.dart';
import '../entidades/coluna.dart';
import '../entidades/empresa/empresa.dart';
import '../entidades/entidade.dart';
import '../entidades/pagamento/pagamento.dart';
import '../entidades/pagamento_sistema/pagamento_sistema.dart';
import '../entidades/usuario/usuario.dart';
import 'config.dart';
import 'entidade_helper.dart';
import '../daos/postgres_dao.dart';

criarBanco() async {
  List<Entidade> entidades = [];
  entidades.add(Usuario());
  entidades.add(Empresa());
  entidades.add(Pagamento());
  entidades.add(PagamentoSistema());
  await processaEntidades(entidades);
  await refreshHarusa();
  await verificaAdmin();
}

refreshHarusa() async {
  String sql = """
  {
    "type" : "reload_metadata",
    "args": {
        "reload_remote_schemas": true,
        "reload_sources": true,
        "recreate_event_triggers": true
    }
}
  """;

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/metadata");

  var response = await post(uri, body: sql, headers: headers);
  print(response.body);
}

addHasuraTable(Entidade entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();

  String sql = """
{
   "type": "pg_track_table",
   "args": {
      "name": "$nomeTabela"
   }
}
  """;

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/metadata");

  var response = await post(uri, body: sql, headers: headers);
  print(response.body);
}

addHasuraForeignKeys(Entidade tabela, Entidade  campo,String nomeCampo) async {
  var nomeTabela = tabela.runtimeType.toString().toLowerCase();
  var nomeTabelaReferencia = campo.runtimeType.toString().toLowerCase();

  String sql = """
{
   "type": "pg_create_object_relationship",
   "args": {
      "table": "$nomeTabela",
      "name": "$nomeTabelaReferencia",
      "using": {
         "foreign_key_constraint_on": "$nomeCampo"
      }
   }
}
  """;

  String sql2 = """
{
   "type": "pg_create_array_relationship",
   "args": {
      "table": "$nomeTabelaReferencia",
      "name": "${'${nomeTabela}s'}",
      "using": {
         "foreign_key_constraint_on": {
            "table" : "$nomeTabela",
            "column" : "$nomeCampo"
         }
      }
   }
}
  """;

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/metadata");

  var response = await post(uri, body: sql, headers: headers);
  print(response.body);
  response = await post(uri, body: sql2, headers: headers);
  print(response.body);
}

verificaAdmin() async {
  String sql = "select * from usuario limit 1 ";
  List results = await selectPostgues(sql);
  if (results.isEmpty) {
    Usuario usuario = Usuario();
    usuario.nome = "admin";
    usuario.senha = "a";
    usuario.email = "admin@teste.com.br";
    usuario.admin = true;
    await insertHasura(usuario);
  }
}

processaEntidades(List<Entidade> entidades) async {
  await addExtencoes();

  for (int i = 0; i < entidades.length; i++) {
    await addTable(entidades[i]);
  }

  for (int i = 0; i < entidades.length; i++) {
    await addCampos(entidades[i]);
  }

  for (int i = 0; i < entidades.length; i++) {
    await addSequence(entidades[i]);
  }

  for (int i = 0; i < entidades.length; i++) {
    await addConstraints(entidades[i]);
  }
  for (int i = 0; i < entidades.length; i++) {
    await addForeignKeys(entidades[i]);
  }

  for (var entidade in entidades) {
    await permissoesTabela(entidade);
  }
}

permissoesTabela(Entidade entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();

  var sql = """
{
    "type" : "create_select_permission",
    "args" : {
        "table" : "$nomeTabela",
        "role" : "usuario",
        "permission" : {
            "columns" : "*",
            "filter" : {
             },
             "allow_aggregations": true
        }
    }
}
  """;

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;
  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/query");
  var response = await post(uri, body: sql, headers: headers);
  print(response.body);
}

addExtencoes() async {
  await executeSql('CREATE EXTENSION IF NOT EXISTS "uuid-ossp";');
}

addTable(Entidade entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  var sql = "create table $nomeTabela ();";
  await executeSql(sql);
  await addHasuraTable(entidade);
}

addSequence(entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  var sql = """
  CREATE SEQUENCE ${nomeTabela}_id_seq
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;
  """;
  await executeSql(sql);
}

addCampos(Entidade entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();

  for (var obj in allFields) {
    String nomeColuna = obj.name.toLowerCase();
    Coluna? coluna = anotacaoColuna(obj.annotations);
    String tipo;
    try {
      instancia(obj.type.type);
      nomeColuna = "${nomeColuna.toLowerCase()}_id";
      tipo = "uuid";
    } catch (e) {
      if (coluna != null && coluna.tipo != null) {
        tipo = coluna.tipo!;
      } else {
        var tipo2 = bancotype(obj.type.toString());
        if (tipo2 == null) {
          continue;
        }
        tipo = tipo2;
      }
    }
    var sql = "ALTER TABLE $nomeTabela ADD COLUMN $nomeColuna $tipo;";
    await executeSql(sql);
  }
}

String? bancotype(String type) {
  if (type == "String") {
    return "character varying (255)";
  } else if (type == "int") {
    return "integer";
  } else if (type == "double") {
    return "double precision";
  } else if (type == "bool") {
    return "boolean";
  } else if (type == "DateTime") {
    return "timestamp without time zone";
  }
  return null;
}

addConstraints(Entidade entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();

  for (var obj in allFields) {
    String nomeColuna = obj.name.toLowerCase();
    Coluna? coluna = anotacaoColuna(obj.annotations);
    if (coluna == null) {
      continue;
    }
    if (coluna.primaryKey) {
      var sql = "ALTER TABLE $nomeTabela ADD CONSTRAINT ${nomeTabela}_pkey PRIMARY KEY ($nomeColuna);";
      await executeSql(sql);
    }
    if (coluna.unique == true) {
      var sql = "ALTER TABLE $nomeTabela ADD CONSTRAINT ${nomeTabela}_${nomeColuna}_key UNIQUE ($nomeColuna);";
      await executeSql(sql);
    }
    if (coluna.nullable == false) {
      var sql = "ALTER TABLE $nomeTabela ALTER COLUMN $nomeColuna SET NOT NULL;";
      await executeSql(sql);
    }
    if (coluna.defaultValue != null) {
      String value = coluna.defaultValue!;
      if (coluna.defaultValue == "sequence") {
        value = "nextval('${nomeTabela}_id_seq')";
      }
      var sql = "ALTER TABLE $nomeTabela ALTER COLUMN $nomeColuna SET DEFAULT $value;";
      await executeSql(sql);
    }
  }
}

addForeignKeys(Entidade entidade) async {
  var nomeTabela = entidade.runtimeType.toString().toLowerCase();
  var reflection = entidade.reflect();
  var allFields = reflection.allFields();

  for (var obj in allFields) {
    String nomeColuna = obj.name.toLowerCase();
    Entidade referencia;
    try {
      referencia = instancia(obj.type.type);
    } catch (e) {
      continue;
    }
    var tabelaReferencia = referencia.runtimeType.toString().toLowerCase();
    var sql =
        "ALTER TABLE $nomeTabela ADD CONSTRAINT fk_${nomeTabela}_${nomeColuna}_id FOREIGN KEY (${nomeColuna}_id) REFERENCES $tabelaReferencia (id) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION;";
    await executeSql(sql);
    await addHasuraForeignKeys(entidade, referencia, "${nomeColuna}_id");
  }
}

executeSql(sql) async {
  try {
    var connection = await getPostgresConnection();
    await connection.execute(sql);
  } catch (e) {
    print(e);
  }
}
