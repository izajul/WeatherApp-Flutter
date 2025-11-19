import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:weather_app_flutter/core/utils/date_format_fun.dart';
import 'package:weather_app_flutter/data/models/WeatherResponseModel.dart';
import 'package:weather_app_flutter/presentation/widgets/app_card.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class DaysForecastWidget extends AppStateLessWidget {
  const DaysForecastWidget({super.key, this.data});

  final List<DailyTimelyData>? data;

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return AppCard(
      child: Column(
        children: List.generate(data?.length ?? 0, (idx) {
          final item = data![idx];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Flexible(
                  flex: 4,
                  fit: FlexFit.tight,
                  child: Text(
                    dateFormat(strToDate(item.time ?? ""), format: "EEEE"),
                    style: themeData.textTheme.titleSmall,
                  ),
                ),
                Flexible(
                  flex: 2,
                  fit: FlexFit.tight,
                  child: Row(
                    children: [
                      Icon(Icons.water_drop, size: 12),
                      SizedBox(width: 2),
                      Text("${item.values?.rainAccumulationAvg}%"),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.sunny, size: 24),
                      SizedBox(width: 10),
                      Icon(Icons.sunny_snowing, size: 24),
                    ],
                  ),
                ),

                Flexible(
                  flex: 3,
                  fit: FlexFit.tight,
                  child: Text(
                    "${item.values?.temperatureMin}° ${item.values?.temperatureMax}°",
                    style: themeData.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
