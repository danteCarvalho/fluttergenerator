import 'package:http/http.dart';
import 'package:test/test.dart';
import '../lib/main.dart' as app;

void main() {
  group('test endspoints ', () {
    setUp(
      () async {
        await app.main();
      },
    );
    test('server up', () async {
      var uri = Uri.parse("http://localhost:7001");
      var response = await get(uri);
      expect(response.body, equals(""));
    });
    test('hello world test', () async {
      var uri = Uri.parse("http://localhost:7001/teste");
      var response = await get(uri);
      expect(response.body, equals("Hello World!"));
    });
  });
}
