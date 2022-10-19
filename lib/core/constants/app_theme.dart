
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static const AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: Color.fromRGBO(249, 249, 249, 0.94),
    centerTitle: true,
    titleTextStyle: TextStyle(
      color: AppColors.yellow,
      fontSize: 17,
      fontWeight: FontWeight.w500,
    ),
  );

  static ThemeData themeData = ThemeData(
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: MaterialStateProperty.all(
        AppColors.yellow,
      ),
    ),
    canvasColor: Colors.transparent,
    appBarTheme: appBarTheme,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: AppColors.primaryColor,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.secondaryColor,
    ),
    textTheme: GoogleFonts.ubuntuTextTheme(),
    primarySwatch: const MaterialColor(
      0xFF072D72,
      AppColors.colorScratch,
    ),
  );
}
