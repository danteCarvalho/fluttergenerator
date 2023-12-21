
import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';
import '../outros/entidade_helper.dart';

part 'entidade.reflection.g.dart';

@EnableReflection()
@reflector
abstract class Entidade<T> extends SerialMethods<T> {
  String? id;
  int? id2;
  bool? ativa;
  DateTime? dataCriacao;
  DateTime? dataEdicao;
  DateTime? dataDelecao;
  ClassReflection<T> reflect();


}
