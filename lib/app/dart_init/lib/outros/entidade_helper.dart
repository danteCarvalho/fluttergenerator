import 'package:reflectable/reflectable.dart';

import '../entidades/coluna.dart';
import '../entidades/entidade.dart';

class Reflector extends Reflectable {
  const Reflector() : super(reflectedTypeCapability, newInstanceCapability);
}

const reflector = Reflector();

Entidade instancia(Type type) {
  var reflectType = reflector.reflectType(type) as ClassMirror;
  var newInstance = reflectType.newInstance('', []) as Entidade;
  return newInstance;
}

Coluna? anotacaoColuna(List<Object> anotacoes) {
  for (var obj in anotacoes) {
    if (obj is Coluna) {
      return obj;
    }
  }
  return null;
}


