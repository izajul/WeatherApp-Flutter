import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app_flutter/core/routes/app_routes.dart';
import 'package:weather_app_flutter/presentation/widgets/base.widget.dart';

class SplashPage extends AppStateFulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends AppState<SplashPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this);
    _controller.addListener(() {
      if (_controller.isCompleted) {
        print("completed");
        Get.offNamed(AppRoutes.home.path);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget myBuild(BuildContext context, ThemeData themeData) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            themeData.colorScheme.secondary,
            themeData.colorScheme.primary,
          ],
        ),
      ),
      alignment: Alignment.center,
      child: Lottie.asset(
        'assets/lotties/weather_loader.json',
        alignment: Alignment.center,
        controller: _controller,
        onLoaded: (composition) {
          // Configure the AnimationController with the duration of the
          // Lottie file and start the animation.
          _controller
            ..duration = composition.duration
            ..forward();
        },
      ),
    );
  }
}
