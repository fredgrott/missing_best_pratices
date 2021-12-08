// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/infrastructure/app_vars.dart';
import 'package:best_practices_one/src/infrastructure/app_widget_keys.dart';
import 'package:best_practices_one/src/localization_gen/l10n.dart';
import 'package:best_practices_one/src/presentation/features/details/ui/sample_item_details_view.dart';
import 'package:best_practices_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:best_practices_one/src/presentation/features/settings/controller/settings_controller.dart';
import 'package:best_practices_one/src/presentation/features/settings/ui/settings_view.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import 'infrastructure/app_catcher_exceptions.dart';

class MyApp extends StatelessWidget {
  final SettingsController settingsController;

  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (
        BuildContext context,
        Widget? child,
      ) {
        return Theme(
          data: appBrightness == Brightness.light
              ? appLightMaterialThemeData
              : appDarkMaterialThemeData,
          child: PlatformProvider(
            settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
            builder: (context) => PlatformApp(
              // appKey so that we can do a proper Page Object Model test pattern
              widgetKey: appKey,
              // so that we do not have a debug banner in debug  mode
              debugShowCheckedModeBanner: false,
              // for app exceptions repoting
              navigatorKey: myNavigatorKey,
              restorationScopeId: 'app',

              localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [
                Locale(
                  'en',
                  '',
                ), // English, no country code
              ],
              onGenerateTitle: (BuildContext context) => S.of(context).appTitle,

              material: (
                _,
                __,
              ) =>
                  MaterialAppData(
                theme: appLightMaterialThemeData,
                themeMode: settingsController.themeMode,
                darkTheme: appDarkMaterialThemeData,
                onGenerateRoute: (RouteSettings routeSettings) {
                  return MaterialPageRoute<void>(
                    settings: routeSettings,
                    builder: (BuildContext context) {
                      switch (routeSettings.name) {
                        case SettingsView.routeName:
                          return SettingsView(controller: settingsController);
                        case SampleItemDetailsView.routeName:
                          return const SampleItemDetailsView();
                        case SampleItemListView.routeName:
                        default:
                          return const SampleItemListView();
                      }
                    },
                  );
                },
                //shortcuts:
                //actions:
              ),
              cupertino: (
                _,
                __,
              ) =>
                  CupertinoAppData(
                      theme: appMaterialBasedCupertinoThemeData,
                      onGenerateRoute: (RouteSettings routeSettings) {
                        return CupertinoPageRoute<void>(
                          settings: routeSettings,
                          builder: (BuildContext context) {
                            switch (routeSettings.name) {
                              case SettingsView.routeName:
                                return SettingsView(
                                    controller: settingsController,);
                              case SampleItemDetailsView.routeName:
                                return const SampleItemDetailsView();
                              case SampleItemListView.routeName:
                              default:
                                return const SampleItemListView();
                            }
                          },
                        );
                      },
                      //actions:
                      // shortcuts:
                      ),
            ),
          ),
        );
      },
    );
  }
}
