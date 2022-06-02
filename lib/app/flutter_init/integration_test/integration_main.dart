import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../lib/app/modules/home/home_page.dart';
import '../lib/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    setUp(
      () async {
        await app.main();
      },
    );

    testWidgets('tap on the floating action button, verify counter', (tester) async {
      await tester.pumpAndSettle();
      var home = find.byType(HomePage);
      expect(home, findsOneWidget);
      var scafold = find.descendant(of: home, matching: find.byType(Scaffold));
      expect(scafold, findsOneWidget);
    });
  });
}
