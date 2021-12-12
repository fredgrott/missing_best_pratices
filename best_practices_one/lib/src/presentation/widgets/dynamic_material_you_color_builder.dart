// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from Dynanic Oclor package originally
// authored by Google under BSD lcense.

import 'package:best_practices_one/src/presentation/themes/app_colors.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:material_color_utilities/material_color_utilities.dart';

// Gist: Material IO team's version of Dynamic Color Builder at:
//       https://github.com/material-foundation/material-dynamic-color-flutter/blob/main/lib/src/dynamic_color_builder.dart
//       is not backwards compatible. But if I am willing to directly 
//       couple it to one specific app global varaible, ie corePalette than everyone 
//       can use this in a backwards compatible way that makes more sense with 
//       the migration to Material Design 3 being past ude as of December 2021.

class DynamicMaterialYouColorBuilder extends StatefulWidget {
  final Widget Function(CorePalette?) builder;

  const DynamicMaterialYouColorBuilder({
    Key? key,
    required this.builder,
  }) : super(key: key);

  

  @override
  _DynamicMaterialYouColorBuilderState createState() => _DynamicMaterialYouColorBuilderState();
}

class _DynamicMaterialYouColorBuilderState extends State<DynamicMaterialYouColorBuilder>{

  CorePalette? _corePalette;


  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // My Mod is to set corePalette to baseline system colors to be able to 
  // better deal with legacy andorid below leel 12 devices and non android devices.
  Future<void> initPlatformState() async {


    //CorePalette? corePalette;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      corePalette = await DynamicColorPlugin.getCorePalette();
    } on PlatformException {
      debugPrint('Failed to obtain dynamic colors.');
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    // Gist: native plugin returns null if not Android 12 both if not Android 12 or higher and
    //       or if non android device. So I have  to set to my internal 

    setState(() {
      _corePalette = corePalette;
    });

  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(_corePalette);
  }


}
