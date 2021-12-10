// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

WidgetWrapper myAppWrapper({
  TargetPlatform platform = TargetPlatform.android,
  Iterable<LocalizationsDelegate<dynamic>>? localizations,
  NavigatorObserver? navigatorObserver,
  Iterable<Locale>? localeOverrides,
  ThemeData? materialLightTheme,
  ThemeData? materialDarkTheme,
  CupertinoThemeData? cupertinoTheme,
  ThemeMode? themeMode,
}) {
  return (child) => PlatformProvider(
      settings: PlatformSettingsData(iosUsesMaterialWidgets: true),
      initialPlatform: platform,
      builder: (context) => PlatformApp(
            localizationsDelegates: localizations,
            supportedLocales: localeOverrides ?? const [Locale('en')],
            debugShowCheckedModeBanner: false,
            home: Material(child: child) ,
            navigatorObservers: [
              if (navigatorObserver != null) navigatorObserver,
            ],
            material: (
              _,
              __,
            ) =>
                MaterialAppData(
              theme: materialLightTheme,
              themeMode: themeMode,
              darkTheme: materialDarkTheme,
            ),
            cupertino: (
              _,
              __,
            ) =>
                CupertinoAppData(
              theme: cupertinoTheme,
            ),
          ),);
}
