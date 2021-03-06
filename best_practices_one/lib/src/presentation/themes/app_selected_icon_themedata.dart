// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


IconThemeData appMaterialLightSelectedIconThemeData = IconThemeData(
  color: Color(materialLightSystemScheme.primaryContainer),
  size: appIconSize,
);

IconThemeData appMaterialDarkSelectedIconThemeData = IconThemeData(
  color: Color(materialDarkSystemScheme.primaryContainer),
  size: appIconSize,
);

IconThemeData appCupertinoSelectedIconThemeData = IconThemeData(
  color: Color(cupertinoSystemScheme.primaryContainer),
  size: appIconSize,
);
