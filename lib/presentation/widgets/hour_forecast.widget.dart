import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_app_flutter/core/utils/date_format_fun.dart';
import 'package:weather_app_flutter/data/models/WeatherResponseModel.dart';
import 'package:weather_app_flutter/presentation/widgets/app_card.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class HourForecastWidget extends AppStateLessWidget {
  const HourForecastWidget({super.key, this.data});

  final List<HourTimelyData>? data;

  String get getHighToLow {
    if (data == null && data!.isEmpty) return "----";
    final tempList = data?.map((d) => d.values?.temperature).toList();
    tempList?.sort();
    final high = tempList?.last;
    final low = tempList?.first;
    return "Highs $high°C and Lows $low°C";
  }

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: AppCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              getHighToLow,
              style: themeData.textTheme.displaySmall?.copyWith(fontSize: 16),
            ),
            SizedBox(height: 10),
            Divider(color: Colors.white70, thickness: 0.5, height: 0.5),
            SizedBox(height: 10),

            // hourly forecast list
            Flexible(
              child: ListView.builder(
                itemCount: data?.length ?? 0,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, idx) {
                  final item = data![idx];
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 12,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// time
                        Text(
                          dateFormat(
                            strToDate(item.time ?? ""),
                            format: "hh a",
                          ).toLowerCase(),
                        ),

                        // temperature status icon
                        Icon(Icons.sunny),

                        /// temperature
                        Text(
                          "${item.values?.temperature}°",
                          style: themeData.textTheme.titleSmall,
                        ),

                        /// humidity
                        Row(
                          children: [
                            Icon(Icons.water_drop, size: 12),
                            SizedBox(width: 2),
                            // Text("${item.values?.humidity}%"),
                            Text("${item.values?.rainAccumulation}%"),
                          ],
                        ),

                        /// wind
                        Text("${item.values?.windSpeed} km/h"),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
