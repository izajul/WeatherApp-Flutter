import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app_flutter/domain/entities/weather_entity.dart';
import 'package:weather_app_flutter/domain/usecases/weatherUseCase.dart';

class LocationController extends GetxController {
  final WeatherUseCase weatherUseCase;

  LocationController({required this.weatherUseCase});

  final isLoadingData = false.obs;

  final weatherData = Rx<WeatherEntity?>(null);

  Future<void> geWeatherData() async {
    if (isLoadingData.value) return;

    isLoadingData.value = true;

    final res = await weatherUseCase.getWeather();
    res.onResult((err) {
      isLoadingData.value = false;
      Get.snackbar('Error', err.message);
      print(err.message);
    }, (data) {
      print("Weather Loaded: ${data.timelines?.daily?.length}");
      weatherData.value = data;
      weatherData.refresh();
      isLoadingData.value = false;
    });
  }
}
