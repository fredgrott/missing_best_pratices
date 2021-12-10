// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:io';

import 'package:flutter/foundation.dart';

// This is called via 
//     await takeScreenshot(tester, binding)
//
// operates with the assumption that binding is initialized 
// in setUp in the app_test grouping of all tests.
//
//  Logic is if web than regular way, if android then 
//  special way and if none of those then still the regular way.
Future<void> takeScreenshot(dynamic tester, dynamic binding, String testName,) async {
  if (kIsWeb) {
    await binding.takeScreenshot(testName);

    return;
  } else if (Platform.isAndroid) {
    await binding.convertFlutterSurfaceToImage();
    await tester.pumpAndSettle();
  }
  await binding.takeScreenshot(testName);
}
