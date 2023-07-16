import 'package:test/test.dart';

String sayHello(String name) {
  return 'Hello $name';
}

void main() {
  test('Test sayHello()', () {
    var response = sayHello('Dart');
    // untuk memastikan data yang kita test sudah benar atau salah
    // expect(<yang di test>, <data yang diharapkan>);
    expect(response, 'Hello Dart');
  });
}
