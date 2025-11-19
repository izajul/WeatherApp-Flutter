import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_flutter/core/routes/app_routes.dart';
import 'package:weather_app_flutter/presentation/injectors/home_bindings.dart';
import 'package:weather_app_flutter/presentation/pages/home.page.dart';
import 'package:weather_app_flutter/presentation/pages/splash.page.dart';

final List<GetPage> appPages = [
  GetPage(name: AppRoutes.splash.path, page: () => const SplashPage()),
  GetPage(
    name: AppRoutes.home.path,
    page: () => HomePage(),
    binding: HomeBindings(),
  ),
];
