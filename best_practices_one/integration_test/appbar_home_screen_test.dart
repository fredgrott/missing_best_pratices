// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'app_test_helpers.dart';

void main() {}
late  IntegrationTestWidgetsFlutterBinding binding;

Future<void> appBarHomeScreenTest() async {
  setUpAll(() async {
    binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized()
        as IntegrationTestWidgetsFlutterBinding;

    binding.framePolicy = LiveTestWidgetsFlutterBindingFramePolicy.fullyLive;

    // setting up our mocked dep

    //await settingsController.loadSettings();
  });

  tearDownAll(() async {});
  group(
    'Home Screen has appbar',
    () {
      testWidgets(
        "Home Screen has appbar",
        (WidgetTester tester) async {
          app.main();

          await tester.pumpAndSettle();

          expect(find.byType(AppBar), findsOneWidget,);

          takeScreenshot(tester, binding,'HomeScreen-Has-AppBar',);
        },
      );
    },
  );
}
