// test akan dicoba sebanyak 10x
// retry dijalankan ketika testnya failed
// misalnya kesalahan jaringan
@Retry(10)

import 'package:test/test.dart';

int sum(int a, int b) => a + b;

void main() {
  group('Test sum()', () {
    test('positive', () {
      expect(sum(1, 2), equals(3));
      // retry spesifik test
    }, retry: 5);

    test('negative', () {
      expect(sum(10, -5), equals(5));
    }, retry: 5);
  });
}
