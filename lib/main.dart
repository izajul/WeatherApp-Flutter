import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:weather_app_flutter/core/theme/textTheme.dart';

import 'core/routes/app_routes.dart';
import 'core/routes/route_pages.dart';
import 'core/theme/theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Set your desired status bar color
      statusBarIconBrightness: Brightness.light, // For dark icons on a light status bar
      // statusBarIconBrightness: Brightness.dark, // For light icons on a dark status bar
    ),
  );

  runApp(MyApp());
}

class MyApp extends GetMaterialApp {
  MyApp({super.key}):super(
    title: "Weather App",
    themeMode: ThemeMode.dark,
    theme: MaterialAppTheme(textTheme).dark(),
    getPages: appPages,
    initialRoute: AppRoutes.splash.name,
  );

}

