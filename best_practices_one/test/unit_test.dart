// This is an example unit test.
//
// A unit test tests a single function, method, or class. To learn more about
// writing unit tests, visit
// https://flutter.dev/docs/cookbook/testing/unit/introduction

import 'package:best_practices_one/src/domain/entity/sample_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  

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
