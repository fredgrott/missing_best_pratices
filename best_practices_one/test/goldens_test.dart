// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/myapp.dart';
import 'package:best_practices_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:best_practices_one/src/presentation/features/settings/controller/settings_controller.dart';
import 'package:best_practices_one/src/presentation/features/settings/ui/settings_view.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import 'goldens_device_defintions.dart';
import 'goldens_wrapper.dart';

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

      // Gist:

      testGoldens(
        "SamppleItemListView-Material-Light-Android",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelxlAndroid,
                samsungNineAndroid,
                samsungEightAndroid,
                pixelfourAndroid,
                pixelthreeAndroid,
                
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home Screen-Material-light-Android',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-material-light-android",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Material-Light-Desktop",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                desktopMine,
                laptopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home Screen-light',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-material-light-desktop",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Material-Dark-Android",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelxlAndroid,
                samsungNineAndroid,
                pixelfourAndroid,
                pixelthreeAndroid,
                
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home Screen-dark',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-material-dark-android",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Material-Dark-Desktop",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home-Screen-dark-desktop',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-material-dark-desktop",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Cupertino-Dark-IOS",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                iPadAir,
                iPadPro10,
                iPadPro122ndGen,
                iphonetenxIOS,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home-Screen-cupertino-dark-ios',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-cupertino-dark-ios",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Cupertino-Dark-Desktop",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home-Screen-cupertino-dark-desktop',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-cupertino-dark-desktop",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Cupertino-Light-IOS",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                iPadAir,
                iPadPro10,
                iPadPro122ndGen,
                iphonetenxIOS,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home-Screen-cupertino-light-ios',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-cupertino-light-ios",
          );
        },
      );

      testGoldens(
        "SampleItemListView-Cupertino-Light-Desktop",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.macOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Home-Screen-cupertino-light-desktop',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "home-screen-cupertino-light-desktop",
          );
        },
      );

      testGoldens(
        "SettingsViewScreen-Material-Light-Android-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelxlAndroid,
                samsungNineAndroid,
                pixelfourAndroid,
                pixelthreeAndroid,
              ],
            )
            ..addScenario(
              widget: SettingsView(controller: mymockedSettingsController,),
              name: 'SettingsViewScreen-Material-Light-Android',
            );

            await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-material-light-android",
          );
        },
      );

      testGoldens(
        "SettingsViewScreen-Material-Light-Desktop-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Material-Light-Desktop',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-material-light-desktop",
          );
        },
      );



      testGoldens(
        "SettingsViewScreen-Material-Dark-Android-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelxlAndroid,
                samsungNineAndroid,
                pixelthreeAndroid,
                pixelfourAndroid,
                
                
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Material-Dark-Android',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-material-dark-android",
          );
        },
      );


     testGoldens(
        "SettingsViewScreen-Material-Dark-Desktop-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
               laptopMine,
               desktopMine,
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Material-Dark-Desktop-Multiple-Devices',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-material-dark-desktop",
          );
        },
      );



      testGoldens(
        "SettingsViewScreen-Cupertino-Light-IOS-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                iPadAir,
                iPadPro10,
                iPadPro122ndGen,
                iphonetenxIOS,
                iphonetwelvepromaxIOS,
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Cupertino-Light-IOS',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-cupertino-light-ios",
          );
        },
      );

      testGoldens(
        "SettingsViewScreen-Cupertino-Light-Destkop-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.macOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Cupertino-Light-Desktop-Multiple-Devices',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-cupertino-light-desktop",
          );
        },
      );













      testGoldens(
        "SettingsViewScreen-Cupertino-Dark-IOS-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.tabletPortrait,
                Device.tabletLandscape,
                iPadAir,
                iPadPro10,
                iPadPro122ndGen,
                iphonetenxIOS,
                iphonetwelvepromaxIOS,
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Cupertino-Dark-ios-Multiple-Devices',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-cupertino-dark-ios",
          );
        },
      );

      testGoldens(
        "SettingsViewScreen-Cupertino-Dark-Desktop-Multiple-Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.macOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
               laptopMine,
               desktopMine,
              ],
            )
            ..addScenario(
              widget: SettingsView(
                controller: mymockedSettingsController,
              ),
              name: 'SettingsViewScreen-Cupertino-Dark-desktop-Multiple-Devices',
            );

          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "settings-view-screen-cupertino-dark-desktop",
          );
        },
      );




      

      testGoldens(
        "Details Screen-Material-Light-Android Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelfourAndroid,
                pixelxlAndroid,
                pixelthreeAndroid,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Material Light Andoroid',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-material-light-android",
          );
        },
      );

      testGoldens(
        "Details Screen-Material-Light-Desktop Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Material Light Desktop',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-material-light-desktop",
          );
        },
      );

      testGoldens(
        "Details Screen-Material-Dark-Android Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelfourAndroid,
                pixelxlAndroid,
                pixelthreeAndroid,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Material Dark Andoroid',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-material-dark-android",
          );
        },
      );

      testGoldens(
        "Details Screen-Material-Dark-Desktop Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.windows,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Material Light Andoroid',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-material-light-android",
          );
        },
      );

      testGoldens(
        "Details Screen-Cupertino-Light-IOS Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
                iPadAir,
                iPadPro10,
                iPadPro122ndGen,
                iphonetenxIOS,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Cupertino Light IOS',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-cupetino-light-ios",
          );
        },
      );

      testGoldens(
        "Details Screen-Cupertino-Light-Desktop Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.macOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.light,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelfourAndroid,
                pixelxlAndroid,
                pixelthreeAndroid,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Cupertno Light Desktop',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-cupertino-light-desktop",
          );
        },
      );

      testGoldens(
        "Details Screen-Material-Dark-Android Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
                pixelfourAndroid,
                pixelxlAndroid,
                pixelthreeAndroid,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Material dark Android',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-material-dark-android",
          );
        },
      );

      testGoldens(
        "Details Screen-Material-Dark-Desktop Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.windows,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Material Dark Desktop',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-material-dark-desktop",
          );
        },
      );


      testGoldens(
        "Details Screen-Cupertino-Dark-IOS Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.iOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                Device.phone,
                Device.iphone11,
                Device.tabletPortrait,
                Device.tabletLandscape,
                iPadAir,
                iPadPro10,
                iPadPro122ndGen,
                iphonetenxIOS,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Cupertino Dark IOS',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-cupertino-dark-ios",
          );
        },
      );

      testGoldens(
        "Details Screen-Cupertino-Dark-Desktop Multiple Devices",
        (WidgetTester tester) async {
          final builder = DeviceBuilder(
            wrap: myAppWrapper(
              platform: TargetPlatform.macOS,
              materialLightTheme: appLightMaterialThemeData,
              materialDarkTheme: appDarkMaterialThemeData,
              cupertinoTheme: appMaterialBasedCupertinoThemeData,
              themeMode: ThemeMode.dark,
            ),
          )
            ..overrideDevicesForAllScenarios(
              devices: [
                laptopMine,
                desktopMine,
              ],
            )
            ..addScenario(
              widget: const SampleItemListView(),
              name: 'Details Screen Cupertino Dark Desktop',
            );
          await tester.pumpDeviceBuilder(builder);
          await screenMatchesGolden(
            tester,
            "details-screen-cupertno-dark-dekstop",
          );
        },
      );





    },
  );
}
