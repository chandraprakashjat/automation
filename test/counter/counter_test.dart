import 'package:automation/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Counter Class Unit Test', () {
    test('Initial value', () {
      expect(Counter().count, 0);
    });

    test('Increment', () {
      var counter = Counter();

      counter.increment();

      expect(counter.count, 1);
    });

    test('Decement Operation', () {
      var counter = Counter();
      counter.decrement();
      expect(counter.count, -1);
    });

    test('middle test', () {
      var counter = Counter();
      counter.decrement();
      counter.decrement();
      expect(counter.count, -2);
    });

    test('Skip Counter Operation', () {
      var counter = Counter();
      counter.decrement();
      counter.decrement();
      counter.decrement();
      expect(counter.count, -2);
    }, skip: Counter().count == 0 ? 'Skip for zero' : 'Skip');
  });
}
