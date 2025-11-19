import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app_flutter/core/constants/assets/assets_icons.dart';
import 'package:weather_app_flutter/core/constants/weather_icons.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class WeatherIconWidget extends AppStateLessWidget {
  const WeatherIconWidget({
    super.key,
    required this.weatherStatusCode,
    this.height = 24,
    this.width = 24,
  });

  final String weatherStatusCode;

  final double height, width;

  String get urlByStatus {
    final findName = iconNameList.firstWhereOrNull(
      (element) => element.contains("${weatherStatusCode}_"),
    )??"10000_clear_small@2x.png";
    return "$iconBaseUrl$findName";
  }

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return FadeInImage(
      placeholder: AssetImage(AppAssetsIcons.default_clear_small.src),
      image: NetworkImage(urlByStatus),
      height: height,
      width: width,
      fit: BoxFit.cover,
    );
  }
}
