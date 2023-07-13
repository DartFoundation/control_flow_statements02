import 'package:test/test.dart';
import '../bin/if06.dart';

void main() {
  group('func', () {
    test('returns the index of the largest digit of a four-digit number', () {
      expect(func(1234), equals(3));
      expect(func(4321), equals(0));
      expect(func(9876), equals(0));
      expect(func(1000), equals(0));
      expect(func(9999), equals(0));
    });

    test('returns the index of the digit if the number is one-digit', () {
      expect(func(0), equals(0));
      expect(func(1), equals(0));
      expect(func(9), equals(0));
    });

    test('returns the index of the largest digit if the number is negative', () {
      expect(func(-1234), equals(3));
      expect(func(-4321), equals(0));
      expect(func(-9876), equals(0));
      expect(func(-1000), equals(0));
      expect(func(-9999), equals(0));
    });
  });
}