import 'package:weather_app_flutter/core/constants/weather_codes.dart';

import '../../data/models/WeatherResponseModel.dart';

class WeatherEntity {
  final Timelines? timelines;
  final Location? location;

  WeatherEntity({this.timelines, this.location});

  String? get currentTemp =>
      timelines?.minutely?.firstOrNull?.values?.temperature?.toString();

  String? get currentTempFeels =>
      timelines?.minutely?.firstOrNull?.values?.temperatureApparent?.toString();

  String? get min =>
      timelines?.daily?.firstOrNull?.values?.temperatureMin?.toString();

  String? get max =>
      timelines?.daily?.firstOrNull?.values?.temperatureMax?.toString();

  String? get humidity =>
      timelines?.minutely?.firstOrNull?.values?.humidity?.toString();

  String? get wind =>
      timelines?.minutely?.firstOrNull?.values?.windSpeed?.toString();

  String? get weatherCondition =>
      weatherConditionCodes[timelines
          ?.minutely
          ?.firstOrNull
          ?.values
          ?.weatherCode
          ?.toString()];
}
