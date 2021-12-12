// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Gist: Due to the Scheme class from material color utilities
//       I only need text theme fields extensions to theme data.

import 'package:best_practices_one/src/infrastructure/app_vars.dart';
import 'package:best_practices_one/src/presentation/themes/app_appbars.dart';
import 'package:best_practices_one/src/presentation/themes/app_bottomappbar_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_bottomnavigationbar_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_button_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_card_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_colors.dart';


import 'package:best_practices_one/src/presentation/themes/app_divider_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_drawer_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_listtile_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_navigationrail_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_tabbar_themedata.dart';
import 'package:best_practices_one/src/presentation/themes/app_text_styles.dart';
import 'package:best_practices_one/src/presentation/themes/app_texttheme.dart';
import 'package:flutter/material.dart';



import 'app_colorscheme_ext.dart';
import 'app_text_theme_ext.dart';


ThemeData appLightMaterialThemeData = ThemeData(
  colorScheme: materialLightColorScheme,
  brightness: Brightness.light,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color(materialLightSystemScheme.primary),
  primaryColorBrightness: Brightness.light,
  primaryColorLight: Color(materialLightSystemScheme.primary),
  primaryColorDark: Color(materialDarkSystemScheme.primary),
  canvasColor: Color(materialLightSystemScheme.background),
  shadowColor: Color(materialLightSystemScheme.shadow),
  scaffoldBackgroundColor: Color(materialLightSystemScheme.background),
  bottomAppBarColor: Color(materialLightSystemScheme.background),
  cardColor: Color(materialLightSystemScheme.background),
  dividerColor: Color(materialLightSystemScheme.primaryContainer),
  focusColor: Color(materialLightSystemScheme.secondaryContainer),
  hoverColor: Color(materialLightSystemScheme.secondary),
  highlightColor: Color(materialLightSystemScheme.tertiaryContainer),
  splashColor: Color(materialLightSystemScheme.tertiary),
  selectedRowColor: Color(materialLightSystemScheme.primaryContainer),
  unselectedWidgetColor: Color(materialLightSystemScheme.secondaryContainer),
  disabledColor: Colors.grey,
  //buttonColor:
  secondaryHeaderColor: Color(materialLightSystemScheme.onSecondary),
  //textSelectionColor:
  //cursorColor:
  //textSelectionHandleColor:
  backgroundColor: Color(materialDarkSystemScheme.background),
  appBarTheme: appMaterialLightAppBarTheme,
  buttonTheme: appMaterialLightButtonThemeData,
  textTheme:  appMaterialLightTextTheme,
  tabBarTheme: appMaterialLightTabBarTheme,
  bottomAppBarTheme: appMaterialLightBottomAppBarTheme,
  bottomNavigationBarTheme: appMaterialLightBottomNavBarThemeData,
  navigationRailTheme: appMaterialLightNavRailThemeData,
  cardTheme: appMaterialLightCardTheme,
  //listTileTheme: appMaterialLightListTileThemeData,
  drawerTheme: appMaterialLightDrawerThemeData,
  dividerTheme: appMaterialLightDividerThemeData,
  
)..addThemeDataTextFields(
    AppThemeDataTextThemeFields(
      appBodyLarge: appTextStyleBodyLargeMaterialLight,
      appBodyMedium: appTextStyleBodyMediumMaterialLight,
      appBodySmall: appTextStyleBodySmallMaterialLight,
      appDisplayLarge: appTextStyleDisplayLargeMaterialLight,
      appDisplayMedium: appTextStyleDisplayMediumMaterialLight,
      appDisplaySmall: appTextStyleDisplaySmallMaterialLight,
      appHeadlineLarge: appTextStyleHeadlineLargeMaterialLight,
      appHeadlineMedium: appTextStyleHeadlineMediumMaterialLight,
      appHeadlineSmall: appTextStyleHeadlineSmallMaterialLight,
      appLabelLarge: appTextStyleLabelLargeMaterialLight,
      appLabelMedium: appTextStyleLabelMediumMaterialLight,
      appLabelSmall: appTextStyleLabelSmallMaterialLight ,
      appTitleLarge: appTextStyleTitleLargeMaterialLight,
      appTitleMedium: appTextStyleTitleMediumMaterialLight,
      appTitleSmall: appTextStyleTitleSmallMaterialLight,
    ),
  )..addColorSchemeColorFields(AppColorSchemeColorFields(
    appSurface: Color(materialLightSystemScheme.surface),
    appSecondary: Color(materialLightSystemScheme.secondary),
    appPrimary: Color(materialLightSystemScheme.primary),
    appError: Color(materialLightSystemScheme.error),
    appBackground: Color(materialLightSystemScheme.background),
    appOnBackground: Color(materialLightSystemScheme.onBackground),
    appErrorContainer: Color(materialLightSystemScheme.errorContainer),
    appInversePrimary: Color(materialLightSystemScheme.inversePrimary),
    appInverseSurface: Color(materialLightSystemScheme.inverseSurface),
    appOnError: Color(materialLightSystemScheme.onError),
    appOnErrorContainer: Color(materialLightSystemScheme.onErrorContainer),
    appOnInverseSurface: Color(materialLightSystemScheme.inverseOnSurface),
    appOnPrimary: Color(materialLightSystemScheme.onPrimary),
    appOnPrimaryContainer: Color(materialLightSystemScheme.onPrimaryContainer),
    appOnSecondary: Color(materialLightSystemScheme.onSecondary),
    appOnSecondaryContainer: Color(materialLightSystemScheme.onSecondaryContainer),
    appOnSurface: Color(materialLightSystemScheme.onSurface),
    appOnSurfaceVariant: Color(materialLightSystemScheme.onSurfaceVariant),
    appOnTertiary: Color(materialLightSystemScheme.onTertiary),
    appOnTertiaryContainer: Color(materialLightSystemScheme.onTertiaryContainer),
    appOutline: Color(materialLightSystemScheme.outline),
    appShadow: Color(materialLightSystemScheme.shadow),
    appSurfaceVariant: Color(materialLightSystemScheme.surfaceVariant),
    appTertiary: Color(materialLightSystemScheme.tertiary),
    appTertiaryContainer: Color(materialLightSystemScheme.tertiaryContainer),
    appSemanticOnePrimary: Color(primaryLightOne),
    appSemanticOneOnPrimary: Color(onPrimaryLightOne),
    appSemanticOnePrimaryContainer: Color(primaryContainerLightOne),
    appSemanticOneOnPrimaryContainer: Color(onPrimaryContainerLightOne),
    appSemanticTwoPrimary: Color(primaryLightTwo),
    appSemanticTwoOnPrimary: Color(onPrimaryLightTwo),
    appSemanticTwoPrimaryContainer: Color(primaryContainerLightTwo),
    appSemanticTwoOnPrimaryContainer: Color(onPrimaryContainerLightTwo),
    appSemanticThreePrimary: Color(primaryLightThree),
    appSemanticThreeOnPrimary: Color(onPrimaryLightThree),
    appSemanticThreePrimaryContainer: Color(primaryContainerLightThree),
    appSemanticThreeOnPrimaryContainer: Color(onPrimaryContainerLightThree),
  ),);





ThemeData appDarkMaterialThemeData = ThemeData(
  colorScheme: materialDarkColorScheme,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color(materialDarkSystemScheme.primary),
  primaryColorBrightness: Brightness.dark,
  primaryColorLight: Color(materialLightSystemScheme.primary),
  primaryColorDark: Color(materialDarkSystemScheme.primary),
  canvasColor: Color(materialDarkSystemScheme.background),
  shadowColor: Color(materialDarkSystemScheme.shadow),
  scaffoldBackgroundColor: Color(materialDarkSystemScheme.background),
  bottomAppBarColor: Color(materialDarkSystemScheme.background),
  cardColor: Color(materialDarkSystemScheme.background),
  dividerColor: Color(materialDarkSystemScheme.primaryContainer),
  focusColor: Color(materialDarkSystemScheme.secondaryContainer),
  hoverColor: Color(materialDarkSystemScheme.secondary),
  highlightColor: Color(materialDarkSystemScheme.tertiaryContainer),
  splashColor: Color(materialDarkSystemScheme.tertiary),
  selectedRowColor: Color(materialDarkSystemScheme.primaryContainer),
  unselectedWidgetColor: Color(materialDarkSystemScheme.secondaryContainer),
  disabledColor: Colors.grey,
  //buttonColor:
  secondaryHeaderColor: Color(materialDarkSystemScheme.onSecondary),
  //textSelectionColor:
  //cursorColor:
  //textSelectionHandleColor:
  backgroundColor: Color(materialDarkSystemScheme.background),
  appBarTheme: appMaterialDarkAppBarTheme,
  buttonTheme: appMaterialDarkButtonThemeData,
  tabBarTheme: appMaterialDarkTabBarTheme,
  bottomAppBarTheme: appMaterialDarkBottomAppBarTheme,
  bottomNavigationBarTheme: appMaterialDarkBottomNavBarThemeData,
  navigationRailTheme: appMaterialDarkNavRailThemeData,
  cardTheme: appMaterialDarkCardTheme,
  //listTileTheme: appMaterialDarkListTileThemeData,
  drawerTheme: appMaterialDarkDrawerThemeData,
  dividerTheme: appMaterialDarkDividerThemeData,
  textTheme: appMaterialDarkTextTheme,
)..addThemeDataTextFields(
    AppThemeDataTextThemeFields(
      appBodyLarge: appTextStyleBodyLargeMaterialDark,
      appBodyMedium: appTextStyleBodyMediumMaterialDark,
      appBodySmall: appTextStyleBodySmallMaterialDark,
      appDisplayLarge: appTextStyleDisplayLargeMaterialDark,
      appDisplayMedium: appTextStyleDisplayMediumMaterialDark,
      appDisplaySmall: appTextStyleDisplaySmallMaterialDark,
      appHeadlineLarge: appTextStyleHeadlineLargeMaterialDark,
      appHeadlineMedium: appTextStyleHeadlineMediumMaterialDark,
      appHeadlineSmall: appTextStyleHeadlineSmallMaterialDark,
      appLabelLarge: appTextStyleLabelLargeMaterialDark,
      appLabelMedium: appTextStyleLabelMediumMaterialDark,
      appLabelSmall: appTextStyleLabelSmallMaterialDark,
      appTitleLarge: appTextStyleTitleLargeMaterialDark,
      appTitleMedium: appTextStyleTitleMediumMaterialDark,
      appTitleSmall: appTextStyleTitleSmallMaterialDark,
    ),
  )..addColorSchemeColorFields(AppColorSchemeColorFields(
    appSurface: Color(materialDarkSystemScheme.surface),
    appSecondary: Color(materialDarkSystemScheme.secondary),
    appError: Color(materialDarkSystemScheme.error),
    appPrimary: Color(materialDarkSystemScheme.primary),
    appBackground: Color(materialDarkSystemScheme.background),
    appOnBackground: Color(materialDarkSystemScheme.onBackground),
    appErrorContainer: Color(materialDarkSystemScheme.errorContainer),
    appInversePrimary: Color(materialDarkSystemScheme.inversePrimary),
    appInverseSurface: Color(materialDarkSystemScheme.inverseSurface),
    appOnError: Color(materialDarkSystemScheme.onError),
    appShadow: Color(materialDarkSystemScheme.shadow),
    appOnErrorContainer: Color(materialDarkSystemScheme.onErrorContainer),
    appOnInverseSurface: Color(materialDarkSystemScheme.inverseOnSurface),
    appOnPrimary: Color(materialDarkSystemScheme.onPrimary),
    appOnPrimaryContainer: Color(materialDarkSystemScheme.onPrimaryContainer),
    appOnSecondary: Color(materialDarkSystemScheme.onSecondary),
    appOnSecondaryContainer: Color(materialDarkSystemScheme.onSecondaryContainer),
    appOnSurface: Color(materialDarkSystemScheme.onSurface),
    appOnSurfaceVariant: Color(materialDarkSystemScheme.onSurfaceVariant),
    appOnTertiary: Color(materialDarkSystemScheme.onTertiary),
    appOnTertiaryContainer: Color(materialDarkSystemScheme.onTertiaryContainer),
    appOutline: Color(materialDarkSystemScheme.outline),
    appSurfaceVariant: Color(materialDarkSystemScheme.surfaceVariant),
    appTertiary: Color(materialDarkSystemScheme.tertiary),
    appTertiaryContainer: Color(materialDarkSystemScheme.tertiaryContainer),
    appSemanticOnePrimary: Color(primaryDarkOne),
    appSemanticOneOnPrimary: Color(onPrimaryDarkOne),
    appSemanticOnePrimaryContainer: Color(primaryContainerDarkOne),
    appSemanticOneOnPrimaryContainer: Color(onPrimaryContainerDarkOne),
    appSemanticTwoPrimary: Color(primaryDarkTwo),
    appSemanticTwoOnPrimary: Color(onPrimaryDarkTwo),
    appSemanticTwoPrimaryContainer: Color(primaryContainerDarkTwo),
    appSemanticTwoOnPrimaryContainer: Color(onPrimaryContainerDarkTwo),
    appSemanticThreePrimary: Color(primaryDarkThree),
    appSemanticThreeOnPrimary: Color(onPrimaryDarkThree),
    appSemanticThreePrimaryContainer: Color(primaryContainerDarkThree),
    appSemanticThreeOnPrimaryContainer: Color(onPrimaryContainerDarkThree),
    
    ),);




ThemeData appCupertinoThemeData = ThemeData(
  colorScheme: cupertinoColorScheme,
  brightness: appBrightness,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Color(cupertinoSystemScheme.primary),
  primaryColorBrightness: appBrightness,
  primaryColorLight: Color(cupertinoSystemScheme.primary),
  canvasColor: Color(cupertinoSystemScheme.background),
  shadowColor: Color(cupertinoSystemScheme.shadow),
  scaffoldBackgroundColor: Color(cupertinoSystemScheme.background),
  bottomAppBarColor: Color(cupertinoSystemScheme.background),
  cardColor: Color(cupertinoSystemScheme.background),
  dividerColor: Color(cupertinoSystemScheme.primaryContainer),
  focusColor: Color(cupertinoSystemScheme.secondaryContainer),
  hoverColor: Color(cupertinoSystemScheme.secondary),
  highlightColor: Color(cupertinoSystemScheme.tertiaryContainer),
  splashColor: Color(cupertinoSystemScheme.tertiary),
  selectedRowColor: Color(cupertinoSystemScheme.primaryContainer),
  unselectedWidgetColor: Color(cupertinoSystemScheme.secondaryContainer),
  disabledColor: Colors.grey,
  //buttonColor:
  secondaryHeaderColor: Color(cupertinoSystemScheme.onSecondary),
  //textSelectionColor:
  //cursorColor:
  //textSelectionHandleColor:
  backgroundColor: Color(cupertinoSystemScheme.background),
  appBarTheme: appCupertinoAppBarTheme,
  buttonTheme: appCupertinoButtonThemeData,
  tabBarTheme: appCupertinoTabBarTheme,
  bottomAppBarTheme: appCupertinoBottomAppBarTheme,
  bottomNavigationBarTheme: appCupertinoBottomNavBarThemeData,
  navigationRailTheme: appCupertinoNavRailThemeData,
  cardTheme: appCupertinoCardTheme,
  //listTileTheme: appCupertinoListTileThemeData,
  drawerTheme: appCupertinoDrawerThemeData,
  dividerTheme: appCupertinoDividerThemeData,
  textTheme: appCupertinoTextTheme,
);


MaterialBasedCupertinoThemeData appMaterialBasedCupertinoThemeData =
    MaterialBasedCupertinoThemeData(
  materialTheme: appCupertinoThemeData,
)..addThemeDataTextFields(AppThemeDataTextThemeFields(
  appBodyLarge: appTextStyleBodyLargeCupertino,
        appBodyMedium: appTextStyleBodyMediumCupertino,
        appBodySmall: appTextStyleBodySmallCupertino,
        appDisplayLarge: appTextStyleDisplayLargeCupertino,
        appDisplayMedium: appTextStyleDisplayMediumCupertino,
        appDisplaySmall: appTextStyleDisplaySmallCupertino,
        appHeadlineLarge: appTextStyleHeadlineLargeCupertino,
        appHeadlineMedium: appTextStyleHeadlineMediumCupertino,
        appHeadlineSmall: appTextStyleHeadlineSmallCupertino,
        appLabelLarge: appTextStyleLabelLargeCupertino,
        appLabelMedium: appTextStyleLabelMediumCupertino,
        appLabelSmall: appTextStyleLabelSmallCupertino,
        appTitleLarge: appTextStyleTitleLargeCupertino,
        appTitleMedium: appTextStyleTitleMediumCupertino,
        appTitleSmall: appTextStyleTitleSmallCupertino,
),)..addColorSchemeColorFields(AppColorSchemeColorFields(
  appSurface: Color(cupertinoSystemScheme.surface),
  appSecondary: Color(cupertinoSystemScheme.secondary),
  appPrimary: Color(cupertinoSystemScheme.primary),
  appError: Color(cupertinoSystemScheme.error),
  appBackground: Color(cupertinoSystemScheme.background),
  appErrorContainer: Color(cupertinoSystemScheme.errorContainer),
  appInversePrimary: Color(cupertinoSystemScheme.inversePrimary),
  appInverseSurface: Color(cupertinoSystemScheme.inverseSurface),
  appOnBackground: Color(cupertinoSystemScheme.onBackground),
  appOnError: Color(cupertinoSystemScheme.onError),
  appOnErrorContainer: Color(
              cupertinoSystemScheme.onErrorContainer,),
  appOnInverseSurface: Color(
              cupertinoSystemScheme.inverseOnSurface,),
  appOnPrimary: Color(cupertinoSystemScheme.onPrimary),
  appOnPrimaryContainer: Color(
              cupertinoSystemScheme.onPrimaryContainer,),
  appOnSecondary: Color(cupertinoSystemScheme.onSecondary),
  appOnSecondaryContainer: Color(
              cupertinoSystemScheme.onSecondaryContainer,),
  appOnSurface: Color(cupertinoSystemScheme.onSurface),
  appOnSurfaceVariant: Color(cupertinoSystemScheme.onSurfaceVariant),
  appOnTertiary: Color(cupertinoSystemScheme.onTertiary),
  appOnTertiaryContainer: Color(
              cupertinoSystemScheme.onTertiaryContainer,),
  appOutline: Color(cupertinoSystemScheme.outline),
  appShadow: Color(cupertinoSystemScheme.shadow),
  appSurfaceVariant: Color(cupertinoSystemScheme.surfaceVariant),
  appTertiary: Color(cupertinoSystemScheme.tertiary),
  appTertiaryContainer: Color(
              cupertinoSystemScheme.tertiaryContainer,),
  appSemanticOnePrimary: primaryCupertinoOne,
  appSemanticOneOnPrimary: onPrimaryCupertinoOne,
  appSemanticOnePrimaryContainer: primaryContainerCupertinoOne,
  appSemanticOneOnPrimaryContainer: onPrimaryContainerCupertinoOne,
  appSemanticTwoPrimary: primaryCupertinoTwo,
  appSemanticTwoOnPrimary: onPrimaryCupertinoTwo,
  appSemanticTwoPrimaryContainer: primaryContainerCupertinoTwo,
  appSemanticTwoOnPrimaryContainer: onPrimaryContainerCupertinoTwo,
  appSemanticThreePrimary: primaryCupertinoThree,
  appSemanticThreeOnPrimary: onPrimaryCupertinoThree,
  appSemanticThreePrimaryContainer: primaryContainerCupertinoThree,
  appSemanticThreeOnPrimaryContainer: onPrimaryContainerCupertinoThree,


),);
