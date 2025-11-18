
import 'package:flutter/material.dart';

/// abstract class for Custom Stateless widget
abstract class AppStateLessWidget extends StatelessWidget {
  const AppStateLessWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Log.d(tag: "MyStateLess:",message: "build Called ");
    final themeData = Theme.of(context);
    return myBuild(context, themeData);
  }

  /// Get
  Widget myBuild(
      BuildContext context, ThemeData themeData, );
}

/// abstract class for Custom stateful widget
abstract class AppStateFulWidget extends StatefulWidget {
  const AppStateFulWidget({super.key});

  // @override
  // State<AppStateFulWidget> createState() => setState();
  //
  // AppState setState();
}

/// Custom State class for Custom Stateful widget
abstract class AppState<T extends AppStateFulWidget> extends State<T> {

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return myBuild(context, themeData);
  }

  Widget myBuild(
      BuildContext context, ThemeData themeData);
}