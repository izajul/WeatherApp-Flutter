import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_flutter/core/theme/textTheme.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/route_pages.dart';
import 'core/theme/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends GetMaterialApp {
  MyApp({super.key}):super(
    title: "Weather App",
    themeMode: ThemeMode.dark,
    theme: MaterialAppTheme(textTheme).dark(),
    getPages: appPages,
    initialRoute: AppRoutes.home.name,
  );

}

