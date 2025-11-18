
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_flutter/core/routes/app_routes.dart';
import 'package:weather_app_flutter/presentation/pages/splash.page.dart';

final List<GetPage> appPages = [
  GetPage(name: AppRoutes.splash.name, page: () => const SplashPage(),),
  GetPage(name: AppRoutes.home.name, page: () => const SplashPage()),
];
