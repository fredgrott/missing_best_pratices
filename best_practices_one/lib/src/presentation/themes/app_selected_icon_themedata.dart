// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/presentation/themes/app_color_system_base_line.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


IconThemeData appMaterialLightSelectedIconThemeData = IconThemeData(
  color: Color(appSystemBaseLineCorePaletteLightScheme.primaryContainer),
  size: appIconSize,
);

IconThemeData appMaterialDarkSelectedIconThemeData = IconThemeData(
  color: Color(appSystemBaseLineCorePaletteDarkScheme.primaryContainer),
  size: appIconSize,
);

IconThemeData appCupertinoSelectedIconThemeData = IconThemeData(
  color: Color(appSystemBaseLineCorePaletteCupertinoScheme.primaryContainer),
  size: appIconSize,
);
