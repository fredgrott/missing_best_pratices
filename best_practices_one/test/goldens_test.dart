// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.


import 'package:best_practices_one/src/myapp.dart';
import 'package:best_practices_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:best_practices_one/src/presentation/features/settings/controller/settings_controller.dart';
import 'package:best_practices_one/src/presentation/features/settings/ui/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

class MockSettingsController extends Mock implements SettingsController {}

void main() {
  final mymockedSettingsController = MockSettingsController();

  setUpAll(() async {
    // This Flutter Engine is running binding turns off
    // http and  https access which is why we use mocks
    // in goldens testing driven design.
    //
    // Putting it in a setUpAll method means its used for all testing in
    // this testing suite.
    TestWidgetsFlutterBinding.ensureInitialized();

    when(() => mymockedSettingsController.themeMode)
        .thenReturn(ThemeMode.system);

    // setting up our mocked dep
  });

  group(
    "Basic Goldens Tests",
    () {
      testWidgets(
        "MyApp Golden Test the Google Way",
        (WidgetTester tester) async {
          await tester.pumpWidget(
            MyApp(settingsController: mymockedSettingsController),
          );

          await expectLater(
            find.byType(MyApp),
            matchesGoldenFile('main.png'),
          );
        },
      );

      testGoldens(
        "Home Screen Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder()
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home Screen',
            );
            await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
              tester, "home screen multiple devices",);
        },
      );

      testGoldens(
        "Settings Screen Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder()
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
              ],
            )
            ..addScenario(
              widget: SettingsView(controller: mymockedSettingsController,),
              name: 'Settings Screen',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings screen multiple devices",
          );
        },
      );

      testGoldens(
        "Details Screen Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder()
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details screen multiple devices",
          );
        },
      );
    },
  );
}
