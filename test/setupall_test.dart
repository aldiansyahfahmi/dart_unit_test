import 'package:test/test.dart';

void main() {
  late String data;

  // setUpAll akan dieksekusi diawal
  // hanya di eksekusi sekali
  setUpAll(() {
    print('start unit test');
  });

  // setUp function digunakan untuk meregistrasi kode yang selalu dieksekusi setiap test function dieksekusi
  // setUp akan diekseskusi diawal function setiap test function dijalankan
  setUp(() {
    data = 'Aldiansyah';
  });

  // tearDown akan diekseskusi diakhir function setiap test function dijalankan
  tearDown(() {
    print(data);
  });

  // tearDownAll akan dieksekusi diakhir
  // hanya di eksekusi sekali
  tearDownAll(() {
    print(data);
  });

  group('Test String', () {
    test('first', () {
      data = '$data Fahmi';
      expect(data, equals('Aldiansyah Fahmi'));
    });
  });
}
