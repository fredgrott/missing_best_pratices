// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/cupertino.dart';


IconThemeData appMaterialLightActionsIconThemeData = IconThemeData(
  color: Color(materialLightSystemScheme.primaryContainer),
  size: appIconSize,
);

IconThemeData appMaterialDarkActionsIconThemeData = IconThemeData(
  color: Color(materialDarkSystemScheme.primaryContainer),
  size: appIconSize,
);

IconThemeData appCupertinoActionsIconThemeData = IconThemeData(
  color: Color(cupertinoSystemScheme.primaryContainer),
  size: appIconSize,
);
