// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/infrastructure/app_vars.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/palettes/core_palette.dart';
import 'package:material_color_utilities/scheme/scheme.dart';

// Gist: Dynamic Color package gets dynamic color palette from seed color
//       of android 12 or higher wallpaper.
CorePalette? corePalette;

// I have to use null assertions here as I set corePalette in a root ap idget
// builder
Scheme materialLightSystemScheme = Scheme(
  primary: corePalette!.primary.get(40),
  onPrimary: corePalette!.primary.get(100),
  primaryContainer: corePalette!.primary.get(90),
  onPrimaryContainer: corePalette!.primary.get(10),
  secondary: corePalette!.secondary.get(40),
  onSecondary: corePalette!.secondary.get(100),
  secondaryContainer: corePalette!.secondary.get(90),
  onSecondaryContainer: corePalette!.secondary.get(10),
  tertiary: corePalette!.tertiary.get(40),
  onTertiary: corePalette!.tertiary.get(100),
  tertiaryContainer: corePalette!.tertiary.get(90),
  onTertiaryContainer: corePalette!.tertiary.get(10),
  error: corePalette!.error.get(40),
  onError: corePalette!.error.get(100),
  errorContainer: corePalette!.error.get(90),
  onErrorContainer: corePalette!.error.get(10),
  background: corePalette!.neutral.get(99),
  onBackground: corePalette!.neutral.get(10),
  // I am diverging from MD3 spec here to one degree of tone less
  surface: corePalette!.neutral.get(99),
  // I am diverging from MD3 spec here to one degree of tone more
  onSurface: corePalette!.neutral.get(10),
  surfaceVariant: corePalette!.neutralVariant.get(90),
  onSurfaceVariant: corePalette!.neutralVariant.get(30),
  outline: corePalette!.neutralVariant.get(50),
  shadow: corePalette!.neutral.get(0),
  inverseSurface: corePalette!.neutral.get(20),
  inverseOnSurface: corePalette!.neutral.get(95),
  inversePrimary: corePalette!.primary.get(80),
);

Scheme materialDarkSystemScheme = Scheme(
  primary: corePalette!.primary.get(80),
  onPrimary: corePalette!.primary.get(20),
  primaryContainer: corePalette!.primary.get(30),
  onPrimaryContainer: corePalette!.primary.get(90),
  secondary: corePalette!.secondary.get(80),
  onSecondary: corePalette!.secondary.get(20),
  secondaryContainer: corePalette!.secondary.get(30),
  onSecondaryContainer: corePalette!.secondary.get(90),
  tertiary: corePalette!.tertiary.get(80),
  onTertiary: corePalette!.tertiary.get(20),
  tertiaryContainer: corePalette!.tertiary.get(30),
  onTertiaryContainer: corePalette!.tertiary.get(90),
  error: corePalette!.error.get(80),
  onError: corePalette!.error.get(20),
  errorContainer: corePalette!.error.get(30),
  onErrorContainer: corePalette!.error.get(90),
  background: corePalette!.neutral.get(10),
  onBackground: corePalette!.neutral.get(90),
  surface: corePalette!.neutral.get(10),
  onSurface: corePalette!.neutral.get(90),
  surfaceVariant: corePalette!.neutralVariant.get(30),
  onSurfaceVariant: corePalette!.neutralVariant.get(80),
  outline: corePalette!.neutral.get(60),
  shadow: corePalette!.neutral.get(0),
  inverseSurface: corePalette!.neutral.get(92),
  inverseOnSurface: corePalette!.neutral.get(20),
  inversePrimary: corePalette!.primary.get(40),
);

Scheme cupertinoSystemScheme = Scheme(
  primary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.primary),
    darkColor: Color(materialDarkSystemScheme.primary),
  ).value,
  onPrimary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onPrimary),
    darkColor: Color(materialDarkSystemScheme.onPrimary),
  ).value,
  primaryContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.primaryContainer),
    darkColor: Color(materialDarkSystemScheme.onPrimaryContainer),
  ).value,
  onPrimaryContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onPrimaryContainer),
    darkColor: Color(materialDarkSystemScheme.onPrimaryContainer),
  ).value,
  secondary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.secondary),
    darkColor: Color(materialDarkSystemScheme.secondary),
  ).value,
  onSecondary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onSecondary),
    darkColor: Color(materialDarkSystemScheme.onSecondary),
  ).value,
  secondaryContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.secondaryContainer),
    darkColor: Color(materialDarkSystemScheme.secondaryContainer),
  ).value,
  onSecondaryContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onSecondaryContainer),
    darkColor: Color(materialDarkSystemScheme.onSecondaryContainer),
  ).value,
  tertiary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.tertiary),
    darkColor: Color(materialDarkSystemScheme.tertiary),
  ).value,
  onTertiary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onTertiary),
    darkColor: Color(materialDarkSystemScheme.onTertiary),
  ).value,
  tertiaryContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.tertiaryContainer),
    darkColor: Color(materialDarkSystemScheme.tertiaryContainer),
  ).value,
  onTertiaryContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onTertiaryContainer),
    darkColor: Color(materialDarkSystemScheme.onTertiaryContainer),
  ).value,
  error: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.error),
    darkColor: Color(materialDarkSystemScheme.error),
  ).value,
  onError: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onError),
    darkColor: Color(materialDarkSystemScheme.onError),
  ).value,
  errorContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.errorContainer),
    darkColor: Color(materialDarkSystemScheme.errorContainer),
  ).value,
  onErrorContainer: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onErrorContainer),
    darkColor: Color(materialDarkSystemScheme.onErrorContainer),
  ).value,
  background: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.background),
    darkColor: Color(materialDarkSystemScheme.background),
  ).value,
  onBackground: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onBackground),
    darkColor: Color(materialDarkSystemScheme.onBackground),
  ).value,
  surface: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.surface),
    darkColor: Color(materialDarkSystemScheme.surface),
  ).value,
  onSurface: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onSurface),
    darkColor: Color(materialDarkSystemScheme.onSurface),
  ).value,
  surfaceVariant: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.surfaceVariant),
    darkColor: Color(materialDarkSystemScheme.surfaceVariant),
  ).value,
  onSurfaceVariant: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.onSurfaceVariant),
    darkColor: Color(materialDarkSystemScheme.onSurfaceVariant),
  ).value,
  outline: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.outline),
    darkColor: Color(materialDarkSystemScheme.outline),
  ).value,
  shadow: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.shadow),
    darkColor: Color(materialDarkSystemScheme.shadow),
  ).value,
  inverseSurface: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.inverseSurface),
    darkColor: Color(materialDarkSystemScheme.inverseSurface),
  ).value,
  inverseOnSurface: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.inverseOnSurface),
    darkColor: Color(materialDarkSystemScheme.inverseOnSurface),
  ).value,
  inversePrimary: CupertinoDynamicColor.withBrightness(
    color: Color(materialLightSystemScheme.inversePrimary),
    darkColor: Color(materialDarkSystemScheme.inversePrimary),
  ).value,
);

int brandColorOne = 0xff009688;
int brandColorTwo = 0xff00bcd4;
int brandColorThree = 0xff4caf50;

CorePalette corePaletteOne = CorePalette.of(brandColorOne);
CorePalette corePaletteTwo = CorePalette.of(brandColorTwo);
CorePalette corePaletteThree = CorePalette.of(brandColorThree);

// light
int primaryLightOne = corePaletteOne.primary.get(40);
int onPrimaryLightOne = corePaletteOne.primary.get(100);
int primaryContainerLightOne = corePaletteOne.primary.get(90);
int onPrimaryContainerLightOne = corePaletteOne.primary.get(10);
int primaryLightTwo = corePaletteTwo.primary.get(40);
int onPrimaryLightTwo = corePaletteTwo.primary.get(100);
int primaryContainerLightTwo = corePaletteTwo.primary.get(90);
int onPrimaryContainerLightTwo = corePaletteTwo.primary.get(10);
int primaryLightThree = corePaletteThree.primary.get(40);
int onPrimaryLightThree = corePaletteThree.primary.get(100);
int primaryContainerLightThree = corePaletteThree.primary.get(90);
int onPrimaryContainerLightThree = corePaletteThree.primary.get(10);

// dark
int primaryDarkOne = corePaletteOne.primary.get(80);
int onPrimaryDarkOne = corePaletteOne.primary.get(20);
int primaryContainerDarkOne = corePaletteOne.primary.get(30);
int onPrimaryContainerDarkOne = corePaletteOne.primary.get(90);
int primaryDarkTwo = corePaletteTwo.primary.get(80);
int onPrimaryDarkTwo = corePaletteTwo.primary.get(20);
int primaryContainerDarkTwo = corePaletteTwo.primary.get(30);
int onPrimaryContainerDarkTwo = corePaletteTwo.primary.get(90);
int primaryDarkThree = corePaletteThree.primary.get(80);
int onPrimaryDarkThree = corePaletteThree.primary.get(20);
int primaryContainerDarkThree = corePaletteThree.primary.get(30);
int onPrimaryContainerDarkThree = corePaletteThree.primary.get(90);

// cupertino
CupertinoDynamicColor primaryCupertinoOne =
    CupertinoDynamicColor.withBrightness(
  color: Color(primaryLightOne),
  darkColor: Color(primaryDarkOne),
);
CupertinoDynamicColor onPrimaryCupertinoOne =
    CupertinoDynamicColor.withBrightness(
  color: Color(onPrimaryLightOne),
  darkColor: Color(onPrimaryDarkOne),
);
CupertinoDynamicColor primaryContainerCupertinoOne =
    CupertinoDynamicColor.withBrightness(
  color: Color(primaryContainerLightOne),
  darkColor: Color(primaryContainerDarkOne),
);
CupertinoDynamicColor onPrimaryContainerCupertinoOne =
    CupertinoDynamicColor.withBrightness(
  color: Color(onPrimaryContainerLightOne),
  darkColor: Color(onPrimaryContainerDarkOne),
);
CupertinoDynamicColor primaryCupertinoTwo =
    CupertinoDynamicColor.withBrightness(
  color: Color(primaryLightTwo),
  darkColor: Color(primaryDarkTwo),
);
CupertinoDynamicColor onPrimaryCupertinoTwo =
    CupertinoDynamicColor.withBrightness(
  color: Color(onPrimaryLightTwo),
  darkColor: Color(onPrimaryDarkTwo),
);
CupertinoDynamicColor primaryContainerCupertinoTwo =
    CupertinoDynamicColor.withBrightness(
  color: Color(primaryContainerLightTwo),
  darkColor: Color(primaryContainerDarkTwo),
);
CupertinoDynamicColor onPrimaryContainerCupertinoTwo =
    CupertinoDynamicColor.withBrightness(
  color: Color(onPrimaryContainerLightTwo),
  darkColor: Color(onPrimaryContainerDarkTwo),
);
CupertinoDynamicColor primaryCupertinoThree =
    CupertinoDynamicColor.withBrightness(
  color: Color(primaryLightThree),
  darkColor: Color(primaryDarkThree),
);
CupertinoDynamicColor onPrimaryCupertinoThree =
    CupertinoDynamicColor.withBrightness(
  color: Color(onPrimaryLightThree),
  darkColor: Color(onPrimaryDarkThree),
);
CupertinoDynamicColor primaryContainerCupertinoThree =
    CupertinoDynamicColor.withBrightness(
  color: Color(primaryContainerLightThree),
  darkColor: Color(primaryContainerDarkThree),
);
CupertinoDynamicColor onPrimaryContainerCupertinoThree =
    CupertinoDynamicColor.withBrightness(
  color: Color(onPrimaryContainerLightThree),
  darkColor: Color(onPrimaryContainerDarkThree),
);

ColorScheme materialLightColorScheme = ColorScheme(
  primary: Color(materialLightSystemScheme.primary),
  primaryVariant: Color(materialLightSystemScheme.primaryContainer),
  secondary: Color(materialLightSystemScheme.secondary),
  secondaryVariant: Color(materialLightSystemScheme.secondaryContainer),
  surface: Color(materialLightSystemScheme.surface),
  background: Color(materialLightSystemScheme.background),
  error: Color(materialLightSystemScheme.error),
  onPrimary: Color(materialLightSystemScheme.onPrimary),
  onSecondary: Color(materialLightSystemScheme.onSecondary),
  onSurface: Color(materialLightSystemScheme.onSurface),
  onBackground: Color(materialLightSystemScheme.onBackground),
  onError: Color(materialLightSystemScheme.onError),
  brightness: Brightness.light,
);

ColorScheme materialDarkColorScheme = ColorScheme(
  primary: Color(materialDarkSystemScheme.primary),
  primaryVariant: Color(materialDarkSystemScheme.primaryContainer),
  secondary: Color(materialDarkSystemScheme.secondary),
  secondaryVariant: Color(materialDarkSystemScheme.secondaryContainer),
  surface: Color(materialDarkSystemScheme.surface),
  background: Color(materialDarkSystemScheme.background),
  error: Color(materialDarkSystemScheme.error),
  onPrimary: Color(materialDarkSystemScheme.onPrimary),
  onSecondary: Color(materialDarkSystemScheme.onSecondary),
  onSurface: Color(materialDarkSystemScheme.onSurface),
  onBackground: Color(materialDarkSystemScheme.onBackground),
  onError: Color(materialDarkSystemScheme.onError),
  brightness: Brightness.dark,
);

ColorScheme cupertinoColorScheme = ColorScheme(
  primary: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.primary,
    darkColor: materialDarkColorScheme.primary,
  ),
  primaryVariant: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.primaryVariant,
    darkColor: materialDarkColorScheme.primaryVariant,
  ),
  secondary: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.secondary,
    darkColor: materialDarkColorScheme.secondary,
  ),
  secondaryVariant: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.secondaryVariant,
    darkColor: materialDarkColorScheme.secondaryVariant,
  ),
  surface: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.surface,
    darkColor: materialDarkColorScheme.surface,
  ),
  background: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.background,
    darkColor: materialDarkColorScheme.background,
  ),
  error: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.error,
    darkColor: materialDarkColorScheme.error,
  ),
  onPrimary: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.onPrimary,
    darkColor: materialDarkColorScheme.onPrimary,
  ),
  onSecondary: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.onSecondary,
    darkColor: materialDarkColorScheme.onSecondary,
  ),
  onSurface: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.onSurface,
    darkColor: materialDarkColorScheme.onSurface,
  ),
  onBackground: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.onBackground,
    darkColor: materialDarkColorScheme.onBackground,
  ),
  onError: CupertinoDynamicColor.withBrightness(
    color: materialLightColorScheme.onError,
    darkColor: materialDarkColorScheme.onError,
  ),
  brightness: appBrightness,
);
