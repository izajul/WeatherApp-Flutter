
import 'package:dio/dio.dart';
import 'package:weather_app_flutter/core/config/env.dart';

class DioClient {
  final AppEnv env;
  late final Dio dio;

  DioClient({required this.env}) {
    dio = Dio(
      BaseOptions(
        baseUrl: env.baseUrl,
        connectTimeout: const Duration(seconds: 20),
        receiveTimeout: const Duration(seconds: 20),
        contentType: 'application/json',
      ),
    );
  }
}
