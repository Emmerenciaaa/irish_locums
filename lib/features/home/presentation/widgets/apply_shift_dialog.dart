import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/home/presentation/widgets/view_shift_modal.dart';

class ApplyShiftDialog extends StatelessWidget {
  const ApplyShiftDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        height: 171,
        width: 270,
        decoration: BoxDecoration(
          color: AppColors.dialogBackground,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextSemiBold(
              'Hi Emmanuel',
              fontWeight: FontWeight.w600,
              color: AppColors.blackColor,
              fontSize: 15,
            ),
            const Gap(6),
            TextBody(
              'Do you really want to apply for this\nshift',
              color: AppColors.blackColor,
              fontSize: 11,
              textAlign: TextAlign.center,
            ),
            const Gap(15),
            Container(
              height: 1,
              color: AppColors.grey,
            ),
            const Gap(12),
            InkWell(
              onTap: () {
                Navigator.pop(context);
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: ((context) => const ViewShiftModal()),
                );
              },
              child: TextBody(
                'Yes Apply',
                color: AppColors.blurcolor1,
                fontSize: 13,
              ),
            ),
            const Gap(12),
            Container(
              height: 1,
              color: AppColors.grey,
            ),
            const Gap(15),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: TextBody(
                'No Thanks',
                color: AppColors.red,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
