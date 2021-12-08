// Copyright 2021 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:best_practices_one/src/domain/entity/sample_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  sampleItemEntityTest();
}

Future<void> sampleItemEntityTest() async{
  group(
    'unit tests',
    () {
      test(
        "Sample item should have item",
        () {
          const sampleItem = SampleItem(1);

          expect(
            sampleItem.id,
            1,
          );
        },
      );
    },
  );
}


