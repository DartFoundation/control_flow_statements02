import 'package:test/test.dart';
import '../bin/if01.dart';

void main() {
  group('func', () {
    test('returns the largest of three positive numbers', () {
      expect(func(1, 2, 3), equals(3));
      expect(func(3, 2, 1), equals(3));
      expect(func(2, 3, 1), equals(3));
    });

    test('returns the largest of three negative numbers', () {
      expect(func(-1, -2, -3), equals(-1));
      expect(func(-3, -2, -1), equals(-1));
      expect(func(-2, -3, -1), equals(-1));
    });

    test('returns the largest of three mixed numbers', () {
      expect(func(-1, 2, 3), equals(3));
      expect(func(3, -2, 1), equals(3));
      expect(func(2, 3, -1), equals(3));
    });

    test('returns the largest of three equal numbers', () {
      expect(func(1, 1, 1), equals(1));
      expect(func(-1, -1, -1), equals(-1));
      expect(func(0, 0, 0), equals(0));
    });
  });
}