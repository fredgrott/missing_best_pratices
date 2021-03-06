// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/presentation/themes/app_actions_icon_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_colors.dart';


import 'package:best_practices_one/src/presentation/themes/app_icon_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


AppBarTheme appMaterialLightAppBarTheme = AppBarTheme(
  //brightness: Brightness.light,
  //color: appMaterialLightColorScheme.background,
  backgroundColor: Color(materialLightSystemScheme.background),
  // foreground will be text color which needs the tertiary color
  foregroundColor: Color(materialLightSystemScheme.tertiary),
  elevation: appElevation,
  shadowColor: Color(materialLightSystemScheme.shadow),
  centerTitle: true,
  //textTheme:
  //titleTextStyle: appAppBarTextStyle,
  //toolbarTextStyle: appAppBarToolbarTextStyle,
  iconTheme: appMaterialLightIconThemeData,
  actionsIconTheme: appMaterialLightActionsIconThemeData,
);

AppBarTheme appMaterialDarkAppBarTheme = AppBarTheme(
  backgroundColor: Color(materialDarkSystemScheme.background),
  // foreground will be text color which needs the tertiary color
  foregroundColor: Color(materialDarkSystemScheme.tertiary),
  elevation: appElevation,
  shadowColor: Color(materialDarkSystemScheme.shadow),
  centerTitle: true,
  //titleTextStyle: appAppBarTextStyle,
  //toolbarTextStyle: appAppBarToolbarTextStyle,
  iconTheme: appMaterialDarkIconThemeData,
  actionsIconTheme: appMaterialDarkActionsIconThemeData,

);

AppBarTheme appCupertinoAppBarTheme = AppBarTheme(
  backgroundColor: Color(cupertinoSystemScheme.background),
  // foreground will be text color which needs the tertiary color
  foregroundColor: Color(cupertinoSystemScheme.tertiary),
  elevation: appElevation,
  shadowColor: Color(cupertinoSystemScheme.shadow),
  centerTitle: true,
  //titleTextStyle: appAppBarTextStyle,
  //toolbarTextStyle: appAppBarToolbarTextStyle,
  iconTheme: appCupertinoIconThemeData,
  actionsIconTheme: appCupertinoActionsIconThemeData,
);

//TextStyle appAppBarTextStyle = TextStyle();

//TextStyle appAppBarToolbarTextStyle = TextStyle();
