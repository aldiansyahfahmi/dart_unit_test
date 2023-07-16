import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  // ini adalah grouping test
  // didalam group kita bisa membuat group lagi
  // bisa buat group lebih dari satu
  group('Test sum()', () {
    test('positive', () {
      expect(sum(1, 2), equals(3));
    });

    test('negative', () {
      expect(sum(10, -5), equals(5));
    });
  });
}
