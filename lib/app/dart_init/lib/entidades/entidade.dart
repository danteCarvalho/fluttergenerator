import 'package:reflection_factory/reflection_factory.dart';

import '../outros/entidade_helper.dart';
import 'coluna.dart';

part 'entidade.reflection.g.dart';

@EnableReflection()
@reflector
abstract class Entidade<T> {
  @Coluna(tipo: "uuid", primaryKey: true, nullable: false, defaultValue: "uuid_generate_v4()")
  String? id;
  @Coluna(tipo: "bigint", defaultValue: "sequence")
  int? id2;
  bool? ativa;
  DateTime? dataCriacao;
  DateTime? dataEdicao;
  DateTime? dataDelecao;

  Map<String, dynamic> classToMap();

  Map<String, dynamic> toJson();

  Map<String, dynamic> dbMaptoClassMap(Map original);

  String classToString();

  T stringToClass(String string);

  T mapToClass(Map map);

  List<T>? listMapToListClass(List? list);

  ClassReflection<T> reflect();
}
