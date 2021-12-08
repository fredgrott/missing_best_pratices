import 'package:best_practices_one/src/infrastructure/app_widget_keys.dart';
import 'package:best_practices_one/src/presentation/features/home/ui/sample_item_list_view.dart';
import 'package:best_practices_one/src/presentation/themes/app_text_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

/// Displays detailed information about a SampleItem.
class SampleItemDetailsView extends StatelessWidget {
  static const routeName = '/sample_item';

  const SampleItemDetailsView({Key? key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      widgetKey: scaffoldKey,

      appBar: PlatformAppBar(
        key: appBarKey,


        leading: PlatformIconButton(
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
        ),

        title: PlatformText(
          'Item Details',
          textAlign: TextAlign.center,
          style: platformThemeData(
            context,
            material: (data) => data.own().appTitleLarge,
            cupertino: (data) => data.own().appTitleLarge,
          ),

        ),
      ),
      body: Center(
        child: PlatformText(
          'More Information Here',
          style: platformThemeData(
            context,
            material: (data) => data.own().appBodyLarge,
            cupertino: (data) => data.own().appBodyLarge,
          ),

          ),
      ),
    );
  }
}
