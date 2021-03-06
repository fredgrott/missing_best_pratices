// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/cupertino.dart';


IconThemeData appMaterialLightIconThemeData = IconThemeData(
  color: Color(materialLightSystemScheme.primary),
  size: appIconSize,
);

IconThemeData appMaterialDarkIconThemeData = IconThemeData(
  color: Color(materialDarkSystemScheme.primary),
  size: appIconSize,
);

IconThemeData appCupertinoIconThemeData = IconThemeData(
  color: Color(cupertinoSystemScheme.primary),
  size: appIconSize,
);
