import 'package:irish_locums/core/navigators/route_extension.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/auth/presentation/pages/authStartPage.dart';
import 'package:irish_locums/features/home/presentation/pages/app_nav_bar.dart';
import 'package:irish_locums/features/home/presentation/pages/shift_listing_direction_page.dart';
import 'package:irish_locums/features/home/presentation/pages/shift_listing_page.dart';
import 'package:irish_locums/features/onboarding/pages/onboarding.dart';
import 'package:irish_locums/features/onboarding/pages/splashScreen.dart';
import 'package:flutter/material.dart';

Route<T> onGenerateRoute<T>(RouteSettings settings) {
  switch (settings.name) {
    case RouteName.splashScreen:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SplashScreen(),
      );
    case RouteName.onBoardingPage:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const OnboardingScreen(),
      );
    case RouteName.authStartPage:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const AuthStartPage(),
      );
    case RouteName.shiftListingPage:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const ShiftListingPage(),
      );
    case RouteName.appNavPage:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const AppNavBar(),
      );
    case RouteName.shiftListingDirectionPage:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const ShiftListingDirectionScreen(),
      );

    default:
      return MaterialPageRoute<T>(
        builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}

Route<T> _getPageRoute<T>({
  required String routeName,
  required Widget viewToShow,
}) {
  return PageRoutes.fadeThrough(
    settings: RouteSettings(
      name: routeName,
    ),
    builder: (_) => viewToShow,
  );
}
