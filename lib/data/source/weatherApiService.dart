import 'package:dio/dio.dart';
import 'package:weather_app_flutter/core/constants/appi_endpoints.dart';
import 'package:weather_app_flutter/core/networks/dio_client.dart';
import 'package:weather_app_flutter/core/utils/isolate_fun.dart';
import 'package:weather_app_flutter/data/models/WeatherResponseModel.dart';

import '../../core/errors/exceptions.dart';

class WeatherApiService {
  final DioClient dioClient;

  WeatherApiService(this.dioClient);

  Future<WeatherResponseModel> getWeather({
    required double latitude,
    required double longitude,
  }) async {
    try {
      final response = await dioClient.dio.get(
        WeatherApiEndPoints.getWeatherForecast.url,
        queryParameters: {
          'location': "$latitude,$longitude",
          'apikey': dioClient.env.apiKey,
        },
      );

      /// parsing data in isolate
      final data = await handleWithIsolate(
        response.data,
        (d) => WeatherResponseModel.fromJson(d),
      );

      return data;
    } on DioException catch (e) {
      final message =
          e.response?.data?['message']?.toString() ?? 'Something went wrong';
      final statusCode = e.response?.statusCode;
      throw ServerException(message: message, statusCode: statusCode);
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
