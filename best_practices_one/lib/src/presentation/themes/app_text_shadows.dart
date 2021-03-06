// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/cupertino.dart';

Shadow brandOneTitleShadowMaterialLight = Shadow(
  blurRadius: 0.08,
  //offset: Offset.fromDirection(25),
  color:
      Color(corePalette!.tertiary.get(40)).harmonizeWith(Color(brandColorOne)),
);

Shadow brandTwoDisplayShadowMaterialLight = Shadow(
  blurRadius: 0.08,
  color:
      Color(corePalette!.tertiary.get(40)).harmonizeWith(Color(brandColorTwo)),
);

Shadow brandThreeHeadlineShadowMaterialLight = Shadow(
  blurRadius: 0.08,
  color: Color(corePalette!.tertiary.get(40))
      .harmonizeWith(Color(brandColorThree)),
);

Shadow brandOneTitleShadowMaterialDark = Shadow(
  blurRadius: 0.08,
  color:
      Color(corePalette!.tertiary.get(80)).harmonizeWith(Color(brandColorOne)),
);

Shadow brandTwoDisplayShadowMaterialDark = Shadow(
  blurRadius: 0.08,
  color:
      Color(corePalette!.tertiary.get(80)).harmonizeWith(Color(brandColorTwo)),
);

Shadow brandThreeHeadlineShadowMaterialDark = Shadow(
  blurRadius: 0.08,
  color: Color(corePalette!.tertiary.get(80))
      .harmonizeWith(Color(brandColorThree)),
);

Shadow brandOneTitleShadowCupertino = Shadow(
  blurRadius: 0.08,
  color: CupertinoDynamicColor.withBrightness(
    color: Color(corePalette!.tertiary.get(40))
        .harmonizeWith(Color(brandColorTwo)),
    darkColor: Color(corePalette!.tertiary.get(80))
        .harmonizeWith(Color(brandColorOne)),
  ),
);

Shadow brandTwoDisplayShadowCupertino = Shadow(
  blurRadius: 0.08,
  color: CupertinoDynamicColor.withBrightness(
    color: Color(corePalette!.tertiary.get(40))
        .harmonizeWith(Color(brandColorTwo)),
    darkColor: Color(corePalette!.tertiary.get(80))
        .harmonizeWith(Color(brandColorTwo)),
  ),
);

Shadow brandThreeHeadlineShadowCupertino = Shadow(
  blurRadius: 0.08,
  color: CupertinoDynamicColor.withBrightness(
    color: Color(corePalette!.tertiary.get(40))
            .harmonizeWith(Color(brandColorThree)), 
            darkColor: Color(corePalette!.tertiary.get(80))
            .harmonizeWith(Color(brandColorThree)),),
);
