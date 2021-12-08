import 'package:best_practices_one/src/infrastructure/app_widget_keys.dart';
import 'package:best_practices_one/src/presentation/features/details/ui/sample_item_details_view.dart';
import 'package:best_practices_one/src/presentation/features/settings/ui/settings_view.dart';
import 'package:best_practices_one/src/domain/entity/sample_item.dart';
import 'package:best_practices_one/src/presentation/themes/app_text_theme_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';



/// Displays a list of SampleItems.
class SampleItemListView extends StatelessWidget {

  static const routeName = '/';

  final List<SampleItem> items;

  const SampleItemListView({
    Key? key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3),],
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      widgetKey: scaffoldKey,

      appBar: PlatformAppBar(
        widgetKey: appBarKey,

        title: Text(
          'Sample Items',
          textAlign: TextAlign.center,
          key: appBarTitleKey,
          // To get correct Apple Typography and Correct
          // Material Typography with material based
          // cupertino themes we have to hard wire
          // text styles
          style: platformThemeData(
            context,
            material: (data) => data.own().appTitleLarge,
            cupertino: (data) => data.own().appTitleLarge,
          ),

          ),
        trailingActions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName,);
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // produces to many  redraing frame and has resize errors and
        // naked fials with nulls of count 2.
        
        shrinkWrap: true,
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index,) {
          final item = items[index];

          return ListTile(
            key: listTileKey,
            title: Text(
              'SampleItem ${item.id}',
              key: tileTitleKey,
              style: platformThemeData(
                context,
                material: (data) => data.own().appLabelLarge,
                cupertino: (data) => data.own().appLabelLarge,
              ),

            ),
            leading: const CircleAvatar(
              // Display the Flutter Logo image asset.
              foregroundImage: AssetImage('assets/images/flutter_logo.png'),
            ),
            onTap: () {
              // Navigate to the details page. If the user leaves and returns to
              // the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(
                context,
                SampleItemDetailsView.routeName,
              );
            },
          );
        },
      ),
    );
  }
}
