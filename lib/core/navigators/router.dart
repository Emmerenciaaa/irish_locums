import 'package:irish_locums/core/navigators/route_extension.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/auth/presentation/pages/authStartPage.dart';
import 'package:irish_locums/features/auth/presentation/pages/signin/sign_in.dart';
import 'package:irish_locums/features/auth/presentation/pages/signup/employer_signup/aditional_info.dart';
import 'package:irish_locums/features/auth/presentation/pages/signup/employer_signup/company.dart';
import 'package:irish_locums/features/auth/presentation/pages/signup/employer_signup/location.dart';
import 'package:irish_locums/features/auth/presentation/pages/signup/employer_signup/uploads.dart';
import 'package:irish_locums/features/auth/presentation/pages/signup/employer_signup/user_account.dart';
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
    case RouteName.signin:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const Signin(),
      );
    case RouteName.signupUserAccount:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SignupUserAccount(),
      );
    case RouteName.signupUserCompany:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SignupCompany(),
      );
    case RouteName.signupUserUpload:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SignupUserUploads(),
      );
    case RouteName.signupUserLocation:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const SignupUserLocation(),
      );
    case RouteName.signupAdditionalInfo:
      return _getPageRoute(
        routeName: settings.name!,
        viewToShow: const AdditionalInfo(),
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
