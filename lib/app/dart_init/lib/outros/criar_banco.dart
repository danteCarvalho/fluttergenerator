import 'dart:io';

import 'package:bcrypt/bcrypt.dart';
import 'package:http/http.dart';
import 'package:postgres/postgres.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../daos/hasura_dao.dart';
import '../daos/postgres_dao.dart';
import '../entidades/app_link/app_link.dart';
import '../entidades/coluna.dart';
import '../entidades/empresa/empresa.dart';
import '../entidades/entidade.dart';
import '../entidades/imagem/imagem.dart';
import '../entidades/pagamento/pagamento.dart';
import '../entidades/pagamento_sistema/pagamento_sistema.dart';
import '../entidades/usuario/usuario.dart';
import 'config/config.dart';
import 'entidade_helper.dart';

criarBanco() async {
  List<Entidade> entidades = [];
  entidades.add(Imagem());
  entidades.add(Usuario());
  entidades.add(Empresa());
  entidades.add(Pagamento());
  entidades.add(PagamentoSistema());
  entidades.add(AppLink());
  await checkPostgres();
  await checkHasura();
  await processaEntidades(entidades);
  await refreshHarusa();
  await verificaAdmin();
}

checkPostgres() async {
  try {
    Connection connection = await getPostgresConnection();
    print(connection);
  }
  on SocketException catch (e) {
    print("Postgres desligado ou não alcançado");
    print(e);
    exit(0);
  }
  catch (e) {
    print("Hasura desligado ou não alcançado");
    print(e);
    exit(0);
  }
}

checkHasura() async {
  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/healthz");

  try {
    var response = await get(uri, headers: headers);
    print('Hasura: ${response.body}');
  } on SocketException {
    print("Hasura desligado ou não alcançado");
    print(uri);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }
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
      "source":  "${config.hasuraSource}" ,
      "table": "$nomeTabela",
      "configuration": {
        "custom_name": "$nomeTabela${config.hasuraSufix}"
      }
   }
}
  """;

  Map<String, String> headers = {};
  headers["X-Hasura-Admin-Secret"] = config.hasuraAdminSecret;

  var uri = Uri.parse("${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/metadata");

  var response = await post(uri, body: sql, headers: headers);
  print(response.body);
}

addHasuraForeignKeys(Entidade tabela, Entidade campo, String nomeCampo) async {
  var nomeTabela = tabela.runtimeType.toString().toLowerCase();
  var nomeTabelaReferencia = campo.runtimeType.toString().toLowerCase();

  String sql = """
{
   "type": "pg_create_object_relationship",
   "args": {
      "source":  "${config.hasuraSource}" ,
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
      "source":  "${config.hasuraSource}" ,
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
    String hashed = BCrypt.hashpw("a", BCrypt.gensalt(logRounds: 10));
    usuario.senha = hashed;
    usuario.email = "admin@teste.com.br";
    usuario.admin = true;
    usuario.emailVerificado = true;
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
        "source":  "${config.hasuraSource}" ,
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
        obj is String;
        var tipo2 = bancotype(obj);
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

String? bancotype(FieldReflection field) {
  var reflectionFactory = ReflectionFactory();
  var typeString = field.type.type.toString();
  if (typeString == "String") {
    return "character varying (255)";
  } else if (typeString == "int") {
    return "integer";
  } else if (typeString == "double") {
    return "double precision";
  } else if (typeString == "bool") {
    return "boolean";
  } else if (typeString == "DateTime") {
    return "timestamp without time zone";
  }
  else if(reflectionFactory.hasRegisterEnumReflection(field.type.type)){
    return "character varying (255)";
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
