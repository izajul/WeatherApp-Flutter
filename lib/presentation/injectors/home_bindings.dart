import 'package:get/get.dart';
import 'package:weather_app_flutter/core/networks/dio_client.dart';
import 'package:weather_app_flutter/data/repo/locationRepo.dart';
import 'package:weather_app_flutter/data/repo/weather_repo_impl.dart';
import 'package:weather_app_flutter/data/source/app_pref.dart';
import 'package:weather_app_flutter/data/source/weatherApiService.dart';
import 'package:weather_app_flutter/domain/repo/WeatherRepo.dart';
import 'package:weather_app_flutter/domain/usecases/weatherUseCase.dart';
import 'package:weather_app_flutter/presentation/controllers/locationController.dart';

import '../../core/config/env.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AppEnv());
    Get.lazyPut(() => DioClient(env: Get.find()));
    Get.lazyPut(() => AppPref());
    Get.lazyPut(() => WeatherApiService(Get.find()));
    Get.lazyPut(() => LocationReop());
    Get.lazyPut(() => WeatherRepoImpl(Get.find(), Get.find(), Get.find()));
    Get.lazyPut(() => WeatherUseCase(Get.find<WeatherRepoImpl>()));
    Get.lazyPut(() => LocationController(weatherUseCase: Get.find()));
  }
}
