import 'dart:async';

import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/navigators/route_name.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    Timer(
      const Duration(seconds: 5),
          () => Navigator.pushReplacementNamed(context, RouteName.onBoardingPage),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(27),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: const AssetImage(AppAssets.background),
                  fit: BoxFit.cover,
                  colorFilter:ColorFilter.mode(AppColors.backgroundfade.withOpacity(0.5),BlendMode.multiply)
              )),
          child: const Center(
            child: Image(
              image: AssetImage(AppAssets.logo),
            ),
          ),
        ),
      ],
    );
  }
}
