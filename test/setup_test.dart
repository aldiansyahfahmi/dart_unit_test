import 'package:test/test.dart';

void main() {
  late String data;

  // setUp function digunakan untuk meregistrasi kode yang selalu dieksekusi setiap test function dieksekusi
  // setUp function akan dijakankan pertama kali
  setUp(() {
    data = 'Aldiansyah';
  });

  group('Test String', () {
    test('first', () {
      data = '$data Fahmi';
      expect(data, equals('Aldiansyah Fahmi'));
    });
  });
}
