import 'package:test/test.dart';
import '../bin/if03.dart';

void main() {
  group('func', () {
    test('returns the middle number of three positive numbers', () {
      expect(func(1, 2, 3), equals(2));
      expect(func(3, 2, 1), equals(2));
      expect(func(2, 3, 1), equals(2));
    });

    test('returns the middle number of three negative numbers', () {
      expect(func(-1, -2, -3), equals(-2));
      expect(func(-3, -2, -1), equals(-2));
      expect(func(-2, -3, -1), equals(-2));
    });

    test('returns the middle number of three mixed numbers', () {
      expect(func(-1, 2, 3), equals(2));
      expect(func(3, -2, 1), equals(1));
      expect(func(2, 3, -1), equals(2));
    });

    test('returns the middle number of three equal numbers', () {
      expect(func(1, 1, 1), equals(1));
      expect(func(-1, -1, -1), equals(-1));
      expect(func(0, 0, 0), equals(0));
    });
  });
}