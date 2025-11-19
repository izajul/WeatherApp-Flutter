import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:weather_app_flutter/domain/entities/weather_entity.dart';
import 'package:weather_app_flutter/presentation/controllers/locationController.dart';
import 'package:weather_app_flutter/presentation/widgets/app_card.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

import '../../core/utils/date_format_fun.dart';
import '../widgets/days_forecast.widget.dart';
import '../widgets/hour_forecast.widget.dart' show HourForecastWidget;

class HomePage extends AppStateLessWidget {
  HomePage({super.key});

  final controller = Get.find<LocationController>()..geWeatherData();

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return Material(
      color: Colors.transparent,
      child: Container(
        color: themeData.colorScheme.primary,
        child: RefreshIndicator(
          onRefresh: () async {
            print("onRefresh");
          },
          child: Obx(() {
            final isLoading = controller.isLoadingData.value;
            final data = controller.weatherData.value;

            return Skeletonizer(
              enabled: isLoading,
              effect: ShimmerEffect(
                baseColor: Colors.grey.shade400,
                highlightColor: Colors.grey.shade100,
                duration: 1800.milliseconds,
              ),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: Text(data?.location?.locality ?? "----"),
                    pinned: true,
                    expandedHeight: 180,
                    flexibleSpace: FlexibleSpaceBar(
                      titlePadding: EdgeInsets.symmetric(horizontal: 16),
                      collapseMode: CollapseMode.parallax,
                      expandedTitleScale: 1,
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${data?.currentTemp ?? "--"}°C",
                                style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              SizedBox(width: 16),

                              /// show hide during collapsing
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${data?.min}°/${data?.max}°",
                                    style: themeData.textTheme.bodyLarge,
                                  ),
                                  Text(
                                    "${data?.weatherCondition}",
                                    style: themeData.textTheme.titleLarge,
                                  ),
                                ],
                              ),

                              Flexible(
                                fit: FlexFit.tight,
                                child: SizedBox.shrink(),
                              ),

                              /// weather condition icon
                              Icon(Icons.cloud, size: 48),
                            ],
                          ),
                          Text(
                            "${data?.weatherCondition}",
                            style: themeData.textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(90),
                      child: SizedBox.shrink(),
                    ),
                    backgroundColor: themeData.colorScheme.primary,
                  ),

                  SliverPersistentHeader(
                    delegate: _MyHeaderDelegate(isExpanded: false, data: data),
                    pinned: true,
                    floating: false,
                  ),

                  /// hourly forecast
                  SliverToBoxAdapter(child: HourForecastWidget()),

                  /// 10 days forecast
                  SliverToBoxAdapter(child: DaysForecastWidget()),

                  /// Wind & Humidity percentages
                  SliverToBoxAdapter(
                    child: AspectRatio(
                      aspectRatio: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: AppCard(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.air_rounded, size: 40),
                                  const SizedBox(height: 12),
                                  Text(
                                    "Wind",
                                    style: themeData.textTheme.titleSmall,
                                  ),
                                  Text("${data?.wind} km/h"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: AppCard(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.water_drop_sharp, size: 40),
                                  const SizedBox(height: 12),
                                  Text(
                                    "Humidity",
                                    style: themeData.textTheme.titleSmall,
                                  ),
                                  Text("${data?.humidity}%"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}

class _MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final bool isExpanded;

  final WeatherEntity? data;

  _MyHeaderDelegate({required this.isExpanded, this.data});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final themeData = Theme.of(context);

    return Container(
      height: 100,
      color: themeData.colorScheme.primary,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Text(
              "${data?.location?.locality}",
              style: themeData.textTheme.titleLarge,
            ),
          ),
          Flexible(
            child: Text(
              "${data?.min}°/${data?.max}° Feels like ${data?.currentTempFeels}°",
              style: themeData.textTheme.bodyLarge,
            ),
          ),
          Flexible(
            child: Text(
              dateFormat(DateTime.now()),
              style: themeData.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 100.0; // Max height of the header
  @override
  double get minExtent => 0.0; // Min height of the header

  @override
  bool shouldRebuild(_MyHeaderDelegate oldDelegate) {
    return oldDelegate.isExpanded != isExpanded;
  }
}
