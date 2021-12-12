// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.



import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:best_practices_one/src/presentation/themes/app_theme_vars.dart';
import 'package:flutter/material.dart';


CardTheme appMaterialLightCardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: Color(materialLightSystemScheme.inverseSurface),
  shadowColor: Color(materialLightSystemScheme.shadow),
  elevation: appElevation,
  margin: EdgeInsetsGeometry.infinity,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);

CardTheme appMaterialDarkCardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: Color(materialDarkSystemScheme.inverseSurface),
  shadowColor: Color(materialDarkSystemScheme.shadow),
  elevation: appElevation,
  margin: EdgeInsetsGeometry.infinity,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);

CardTheme appCupertinoCardTheme = CardTheme(
  clipBehavior: Clip.antiAlias,
  color: Color(cupertinoSystemScheme.inverseSurface),
  shadowColor: Color(cupertinoSystemScheme.shadow),
  elevation: appElevation,
  margin: EdgeInsetsGeometry.infinity,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
);
