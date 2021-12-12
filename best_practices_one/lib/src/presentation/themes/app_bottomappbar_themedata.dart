// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


BottomAppBarTheme appMaterialLightBottomAppBarTheme = BottomAppBarTheme(
  color: Color(materialLightSystemScheme.background),
  elevation: appElevation,
);

BottomAppBarTheme appMaterialDarkBottomAppBarTheme = BottomAppBarTheme(
  color: Color(materialDarkSystemScheme.background),
  elevation: appElevation,
);

BottomAppBarTheme appCupertinoBottomAppBarTheme = BottomAppBarTheme(
  color: Color(cupertinoSystemScheme.background),
  elevation: appElevation,
);
