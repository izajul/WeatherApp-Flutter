import 'package:weather_app_flutter/core/errors/error_handler.dart';
import 'package:weather_app_flutter/core/errors/failures.dart';
import 'package:weather_app_flutter/domain/entities/weather_entity.dart';
import 'package:weather_app_flutter/domain/repo/weatherRepo.dart';

class WeatherUseCase {
  final WeatherRepo repo;

  WeatherUseCase(this.repo);

  Future<Either<Failure, WeatherEntity>> getWeather() async =>
      repo.getWeatherData();
}
