import 'dart:async';

import 'package:best_practices_one/src/infrastructure/app_build_modes.dart';
import 'package:best_practices_one/src/infrastructure/app_catcher_exceptions.dart';
import 'package:best_practices_one/src/infrastructure/app_logging.dart';
import 'package:best_practices_one/src/infrastructure/app_vars.dart';
import 'package:best_practices_one/src/myapp.dart';
import 'package:catcher/catcher.dart';
import 'package:flutter/material.dart';


import 'src/presentation/features/settings/controller/settings_controller.dart';
import 'src/presentation/features/settings/services/settings_service.dart';

// This works as the main function in say main_dev.dart
// redirects to this mainDelegate() function and
// thus dart is able to pick this up via the cmd-line
// compile(run) -t main_dev.dart
void mainDelegate() => main();


Future<void> main() async {

  // Ensures the Flutter Sky Engine is fully initialized,
  // we can do it here or use the Catcher constructor to
  // also initialize it.
  WidgetsFlutterBinding.ensureInitialized();



  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  initLogger();

  // an internal FlutterError reporter that dumps to console
  FlutterError.onError = (FlutterErrorDetails details) async {
    if (isInDebugMode) {
      // In development mode simply print to console.
      FlutterError.dumpErrorToConsole(details);
    } else {
      // In production mode report to the application zone to report to
      // app exceptions provider. We do not need this in Profile mode.
      // ignore: no-empty-block
      if (isInReleaseMode) {
        // FlutterError class has something not changed as far as null safety
        // so I just assume we do not have a stack trace but still want the
        // detail of the exception.
        // ignore: cast_nullable_to_non_nullable
        Zone.current.handleUncaughtError(
          // ignore: cast_nullable_to_non_nullable
          details.exception, details.stack as StackTrace,
        );
        //Zone.current.handleUncaughtError(details.exception,  details.stack);
      }
    }
  };


  runZonedGuarded<Future<void>>(
    () async {
      // Catcher Config Options:
      //
      Catcher(
        // no need to supply nav key as MyApp parameter as in stateless
        // we do not have a widget thing to grab we cannot access static
        // instances so we just grab the right var from
        // app catch exceptions file. That means that if
        // problably should be some service injected dependency
        rootWidget: MyApp(
          settingsController: settingsController,
        ),
        debugConfig: debugOptions,
        releaseConfig: releaseOptions,
        navigatorKey: myNavigatorKey,
      );
    },
    // ignore: no-empty-block
    (
      Object error,
      StackTrace stack,
    ) {
      // myBackend.sendError(error, stack);
    },
    zoneSpecification: ZoneSpecification(
      // Intercept all print calls
      print: (
        self,
        parent,
        zone,
        line,
      ) async {
        // Include a timestamp and the name of the App
        final messageToLog = "[${DateTime.now()}] $myAppTitle $line $zone";

        // Also print the message in the "Debug Console"
        // but it's ony an info message and contains no
        // privacy prohibited stuff
        parent.print(
          zone,
          messageToLog,
        );
      },
    ),
  );

}
