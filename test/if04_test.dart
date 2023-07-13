import 'package:test/test.dart';
import '../bin/if04.dart';

void main() {
  group('func', () {
    test('returns zero if the numbers are equal', () {
      expect(func(1, 1), equals(0));
      expect(func(-1, -1), equals(0));
      expect(func(0, 0), equals(0));
    });

    test('returns the larger number if they are not equal', () {
      expect(func(1, 2), equals(2));
      expect(func(2, 1), equals(2));
      expect(func(-1, -2), equals(-1));
      expect(func(-2, -1), equals(-1));
      expect(func(0, -1), equals(0));
      expect(func(-1, 0), equals(0));
    });
  });
}