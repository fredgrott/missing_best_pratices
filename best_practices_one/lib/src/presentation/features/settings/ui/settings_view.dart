import 'package:adaptive_breakpoints/adaptive_breakpoints.dart';

import 'package:best_practices_one/src/infrastructure/app_widget_keys.dart';
import 'package:best_practices_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:best_practices_one/src/presentation/themes/app_colorscheme_ext.dart';
import 'package:best_practices_one/src/presentation/themes/app_text_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../controller/settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsView extends StatelessWidget {
  static const routeName = '/settings';

  final SettingsController controller;

  const SettingsView({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      widgetKey: scaffoldKey,
      appBar: PlatformAppBar(
        widgetKey: appBarKey,
        title: Text(
          'Settings',
          key: appBarTitleKey,
          textAlign: TextAlign.center,
          style: platformThemeData(
            context,
            // data.own().appTitleMedium.copyWith(color:)
            // will be the call on onBack onSurface onContainer
            material: (data) => data.own().appTitleMedium,
            cupertino: (data) => data.own().appTitleMedium,
          ),
        ),
        leading: PlatformIconButton(
          color: platformThemeData(
            context,
            material: (data) => data.ownColor().appPrimary,
            cupertino: (data) => data.ownColor().appPrimary,
          ),
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate to the settings page. If the user leaves and returns
            // to the app after it has been killed while running in the
            // background, the navigation stack is restored.
            Navigator.restorablePushNamed(
              context,
              SampleItemListView.routeName,
            );
          },
          material: (_,__,) => MaterialIconButtonData(
            iconSize: getWindowType(context) == AdaptiveWindowType.medium
                ? 48.0
                : 24.0,

          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: DropdownButton<ThemeMode>(
          // Read the selected themeMode from the controller
          value: controller.themeMode,
          // Call the updateThemeMode method any time the user selects a theme.
          onChanged: controller.updateThemeMode,
          items: [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text(
                'System Theme',
                style: platformThemeData(
                  context,
                  material: (data) => data
                      .own()
                      .appLabelLarge
                      ?.copyWith(color: data.ownColor().appOnSurfaceVariant),
                  cupertino: (data) => data.own().appLabelLarge?.copyWith(
                        color: data.ownColor().appOnSurfaceVariant,
                      ),
                ),

              ),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text(
                'Light Theme',
                style: platformThemeData(
                  context,
                  material: (data) => data.own().appLabelLarge?.copyWith(
                        color: data.ownColor().appOnSurfaceVariant,
                      ),
                  cupertino: (data) => data.own().appLabelLarge?.copyWith(
                        color: data.ownColor().appOnSurfaceVariant,
                      ),
                ),

                ),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text(
                'Dark Theme',
                style: platformThemeData(
                  context,
                  material: (data) => data.own().appLabelLarge?.copyWith(
                        color: data.ownColor().appOnSurfaceVariant,
                      ),
                  cupertino: (data) => data.own().appLabelLarge?.copyWith(
                        color: data.ownColor().appOnSurfaceVariant,
                      ),
                ),

                ),
            ),
          ],
        ),
      ),
    );
  }
}
