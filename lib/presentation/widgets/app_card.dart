import 'package:flutter/material.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class AppCard extends AppStateLessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.all(16),
    this.padding = const EdgeInsets.all(16.0),
  });

  final EdgeInsets margin, padding;
  final Widget child;

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return Card(
      color: themeData.colorScheme.onPrimary,
      elevation: 1,
      margin: margin,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(padding: padding, child: child),
    );
  }
}
