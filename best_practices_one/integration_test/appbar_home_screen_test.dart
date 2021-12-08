// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {}

Future<void> appBarHomeScreenTest() async {
  group(
    'Home Screen has appbar',
    () {
      testWidgets(
        "Home Screen has appbar",
        (WidgetTester tester) async {
          app.main();

          await tester.pumpAndSettle();

          expect(find.byType(AppBar), findsOneWidget,);
        },
      );
    },
  );
}
