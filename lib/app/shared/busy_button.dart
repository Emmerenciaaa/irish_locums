import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class BusyButton extends StatelessWidget {
  const BusyButton(
      {super.key,
      required this.title,
      this.buttonColor = AppColors.secondaryColor,
      this.textColor = AppColors.white,
      required this.onTap});
  final String title;
  final Color buttonColor;
  final VoidCallback onTap;
  final textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColor,
        ),
        child: Center(
          child: TextBody(
            title,
            style: GoogleFonts.roboto(
              fontSize: 14,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
