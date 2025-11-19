import 'package:weather_app_flutter/domain/entities/weather_entity.dart';

import '../../core/errors/error_handler.dart';
import '../../core/errors/failures.dart';

abstract class WeatherRepo {
  Future<Either<Failure, WeatherEntity>> getWeatherData();
}
