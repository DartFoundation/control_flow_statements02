import 'package:test/test.dart';
import '../bin/if07.dart';

void main() {
  group('func', () {
    test('returns the correct day of the week for each number', () {
      expect(func(1), equals("Monday"));
      expect(func(2), equals("Tuesday"));
      expect(func(3), equals("Wednesday"));
      expect(func(4), equals("Thursday"));
      expect(func(5), equals("Friday"));
      expect(func(6), equals("Saturday"));
      expect(func(7), equals("Sunday"));
    });

    test('returns an error message for invalid input', () {
      expect(() => func(0), throwsA(isA<ArgumentError>()));
      expect(() => func(8), throwsA(isA<ArgumentError>()));
      expect(() => func(-1), throwsA(isA<ArgumentError>()));
    });
  });
}