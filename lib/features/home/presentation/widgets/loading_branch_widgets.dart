import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class LoadingBranches extends StatelessWidget {
  const LoadingBranches({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 15),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.65,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 48,
              width: 48,
              child: CircularProgressIndicator(
                backgroundColor: AppColors.primaryColor.withOpacity(0.5),
                color: AppColors.primaryColor,
                strokeWidth: 5,
              ),
            ),
            const Gap(19),
            TextSemiBold(
              'Fetching branches detail',
              color: AppColors.tertiaryTextColor,
              fontSize: 16,
            )
          ],
        ),
      ),
    );
  }
}
