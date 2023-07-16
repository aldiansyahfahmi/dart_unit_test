import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

int sum(int a, int b) {
  return a + b;
}

void main() {
  test('Test sayHello() with matcher', () {
    // matcher adalah untuk melakukan pengecekan dengan berbagai kondisi
    // expect(<yang ditest>, matcher);
    expect(sayHello('Aldi'), endsWith('Aldi'));
    expect(sayHello('Aldi'), startsWith('Hello'));
    expect(sayHello('Aldi'), equalsIgnoringCase('hello aldi'));
    expect(sayHello('Aldi'), isA<String>());
  });

  test('Test sum() with matcher', () {
    expect(sum(1, 1), equals(2));
    expect(sum(1, 1), greaterThan(1));
    expect(sum(1, 1), lessThan(3));
  });
}
