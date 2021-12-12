// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:best_practices_one/src/presentation/themes/app_unselectedlabelstyle.dart';
import 'package:flutter/material.dart';


TabBarTheme appMaterialLightTabBarTheme = TabBarTheme(
  indicator: UnderlineTabIndicator(
    borderSide: BorderSide(color: Color(materialLightSystemScheme.primary)),
  ),
  indicatorSize: TabBarIndicatorSize.tab,
  labelColor: Color(materialLightSystemScheme.primaryContainer),
  unselectedLabelColor: Color(materialLightSystemScheme.secondaryContainer),
  labelStyle: appMaterialLightTabBarLabelStyle,
  unselectedLabelStyle: appMaterialLightUnselectedLabelStyle,
);

TabBarTheme appMaterialDarkTabBarTheme = TabBarTheme(
  indicator: UnderlineTabIndicator(
    borderSide: BorderSide(color: Color(materialDarkSystemScheme.primary)),
  ),
  indicatorSize: TabBarIndicatorSize.tab,
  labelColor: Color(materialDarkSystemScheme.primaryContainer),
  unselectedLabelColor: Color(materialDarkSystemScheme.secondaryContainer),
  labelStyle: appMaterialDarkTabBarLabelStyle,
  unselectedLabelStyle: appMaterialDarkUnselectedLabelStyle,
);

TabBarTheme appCupertinoTabBarTheme = TabBarTheme(
  indicator: UnderlineTabIndicator(
    borderSide: BorderSide(color: Color(cupertinoSystemScheme.primary)),
  ),
  indicatorSize: TabBarIndicatorSize.tab,
  labelColor: Color(cupertinoSystemScheme.primaryContainer),
  unselectedLabelColor: Color(cupertinoSystemScheme.secondaryContainer),
  labelStyle: appCupertinoTabBarLabelStyle,
  unselectedLabelStyle: appCupertinoUnselectedLabelStyle,
);

// One of the edge cases

TextStyle appMaterialLightTabBarLabelStyle = TextStyle(
  color: Color(materialLightSystemScheme.tertiary),
);

TextStyle appMaterialDarkTabBarLabelStyle = TextStyle(
  color: Color(materialDarkSystemScheme.tertiary),
);

TextStyle appCupertinoTabBarLabelStyle = TextStyle(
  color: Color(cupertinoSystemScheme.tertiary),
);
