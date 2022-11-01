import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class BusyButton extends StatelessWidget {
  const BusyButton({
    required this.title,
    required this.onTap,
    this.disabled = false,
    this.color = AppColors.primaryColor,
    this.borderRadius,
    Key? key,
  }) : super(key: key);
  final String title;
  final Color? color;
  final VoidCallback onTap;
  final bool disabled;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? BorderRadius.circular(5),
          color: disabled ? AppColors.busyLight : color,
        ),
        child: Center(
          child: TextBody(
            title,
            color: AppColors.white,
            style: const TextStyle(
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ),
    );
  }
}