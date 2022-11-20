
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_theme.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/core/navigators/router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Irish Locums',
      theme: AppTheme.themeData,
      initialRoute: RouteName.signupAdditionalInfo,
      onGenerateRoute: onGenerateRoute,

    );
  }
}