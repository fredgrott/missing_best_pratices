// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/presentation/themes/app_color_system_base_line.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


BottomAppBarTheme appMaterialLightBottomAppBarTheme = BottomAppBarTheme(
  color: Color(appSystemBaseLineCorePaletteLightScheme.background),
  elevation: appElevation,
);

BottomAppBarTheme appMaterialDarkBottomAppBarTheme = BottomAppBarTheme(
  color: Color(appSystemBaseLineCorePaletteDarkScheme.background),
  elevation: appElevation,
);

BottomAppBarTheme appCupertinoBottomAppBarTheme = BottomAppBarTheme(
  color: Color(appSystemBaseLineCorePaletteCupertinoScheme.background),
  elevation: appElevation,
);
