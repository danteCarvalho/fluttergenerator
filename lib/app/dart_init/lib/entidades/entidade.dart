import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../outros/entidade_helper.dart';
import '../outros/metodos_estaticos.dart';
import 'coluna.dart';

part 'entidade.reflection.g.dart';

@EnableReflection()
@reflector
abstract class Entidade<T> extends SerialMethods<T> {
  @Coluna(tipo: "uuid", primaryKey: true, nullable: false, defaultValue: "uuid_generate_v4()")
  String id = "";
  @Coluna(tipo: "bigint", defaultValue: "sequence")
  int id2 = 0;
  bool ativa = false;
  DateTime dataCriacao = initialTime;
  DateTime dataEdicao = initialTime;
  DateTime dataDelecao = initialTime;
  ClassReflection<T> reflect();
}
