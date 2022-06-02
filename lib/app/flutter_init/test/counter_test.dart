import 'package:flutter_test/flutter_test.dart';

class Counter {
  int valor = 0;

  add() {
    valor++;
  }

  sub() {
    valor--;
  }
}

void main() {
  group('Counter', () {
    test('start 0', () {
      var counter = Counter();
      expect(counter.valor, 0);
    });
    test('add =  1', () {
      var counter = Counter();
      counter.add();
      expect(counter.valor, 1);
    });
    test('sub =  -1', () {
      var counter = Counter();
      counter.sub();
      expect(counter.valor, -1);
    });
  });
}
