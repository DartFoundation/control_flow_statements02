import 'package:test/test.dart';
import '../bin/if05.dart';

void main() {
  group('func', () {
    test('returns the largest digit of a four-digit number', () {
      expect(func(1234), equals(4));
      expect(func(4321), equals(4));
      expect(func(9876), equals(9));
      expect(func(1000), equals(1));
      expect(func(9999), equals(9));
    });

    test('returns the digit if the number is one-digit', () {
      expect(func(0), equals(0));
      expect(func(1), equals(1));
      expect(func(9), equals(9));
    });

    test('returns the largest digit if the number is negative', () {
      expect(func(-1234), equals(4));
      expect(func(-4321), equals(4));
      expect(func(-9876), equals(9));
      expect(func(-1000), equals(1));
      expect(func(-9999), equals(9));
    });
  });
}