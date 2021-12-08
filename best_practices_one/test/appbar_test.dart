// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/presentation/features/details/ui/sample_item_details_view.dart';
import 'package:best_practices_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:best_practices_one/src/presentation/features/settings/controller/settings_controller.dart';
import 'package:best_practices_one/src/presentation/features/settings/ui/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockSettingsController extends Mock implements SettingsController {}

void main() {
  final mymockedSettingsController = MockSettingsController();

  setUpAll(() async {
    // any stubbing of mocks goes here
    // this way when its called in the widget it will return what the default
    // usually is. We need this as in unit testing we will not have access to
    // SettingsController being initialized as we are pumping a widget in test
    // side unlike intergration where we test the actual running app.
    when(() => mymockedSettingsController.themeMode)
        .thenReturn(ThemeMode.system);
  });

  // to tear down mocked dependencies
  // ignore: no-empty-block
  tearDownAll(() async {});

  group(
    'AppBar Unit Tests',
    () {
      testWidgets(
        "Home Screen has appbar",
        (WidgetTester tester) async {
          await tester.pumpWidget(const SampleItemListView());

          expect(
            find.byType(AppBar),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        "Sample Item Details Screen has appbar",
        (WidgetTester tester) async {
          await tester.pumpWidget(const SampleItemDetailsView());

          expect(
            find.byType(AppBar),
            findsOneWidget,
          );
        },
      );

      testWidgets(
        "Settings View Screen has an appbar",
        (WidgetTester tester) async {
          await tester.pumpWidget(
            SettingsView(
              controller: mymockedSettingsController,
            ),
          );

          expect(
            find.byType(AppBar),
            findsOneWidget,
          );
        },
      );
    },
  );
}
