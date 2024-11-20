import 'package:dartutils/dartutils.dart';
import 'package:reflection_factory/reflection_factory.dart';

import '../outros/entidade_helper.dart';
import '../outros/metodos_estaticos.dart';

part 'entidade.reflection.g.dart';

@EnableReflection()
@reflector
abstract class Entidade<T> extends SerialMethods<T> {
  String id = "";
  int id2 = 0;
  bool ativa = false;
  DateTime dataCriacao = initialTime;
  DateTime dataEdicao = initialTime;
  DateTime dataDelecao = initialTime;
  ClassReflection<T> reflect();


}