// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/presentation/themes/app_color_system_base_line.dart';
import 'package:flutter/material.dart';



DividerThemeData appMaterialLightDividerThemeData = DividerThemeData(
  color: Color(appSystemBaseLineCorePaletteLightScheme.secondary),
  thickness: 4,
);

DividerThemeData appMaterialDarkDividerThemeData = DividerThemeData(
  color: Color(appSystemBaseLineCorePaletteDarkScheme.secondary),
  thickness: 4,
);

DividerThemeData appCupertinoDividerThemeData = DividerThemeData(
  color: Color(appSystemBaseLineCorePaletteCupertinoScheme.secondary),
  thickness: 4,
);
