import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:weather_app_flutter/presentation/widgets/app_card.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class DaysForecastWidget extends AppStateLessWidget {
  const DaysForecastWidget({super.key});

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return AppCard(
      child: Column(
        children: List.generate(10, (idx) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Today", style: themeData.textTheme.titleSmall),
                Row(
                  children: [
                    Icon(Icons.water_drop, size: 12),
                    SizedBox(width: 2),
                    Text("30%"),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.sunny, size: 24),
                    SizedBox(width: 14),
                    Icon(Icons.sunny_snowing, size: 24),
                  ],
                ),

                Text("27° 30°", style: themeData.textTheme.titleSmall),
              ],
            ),
          );
        }),
      ),
    );
  }
}
