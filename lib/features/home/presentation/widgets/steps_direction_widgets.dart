import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class StepDirectionWidget extends StatelessWidget {
  const StepDirectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 17,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  AppAssets.location2,
                  color: AppColors.blackColor,
                  width: 19,
                  height: 24,
                ),
                const Gap(25),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextBold(
                        'Your Location',
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          color: AppColors.grey900,
                        ),
                      ),
                      const Gap(14),
                      Container(
                        height: 1,
                        color: AppColors.grey200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Gap(4),
            const StepsItem(
              title: '200m',
              icon: AppAssets.directionLeft,
              description: 'Turn left onto Bride St.',
            ),
            const StepsItem(
              title: '450m',
              icon: AppAssets.directionLeft,
              description: 'Turn left onto Kevin Street Lower',
            ),
            const StepsItem(
              title: '800m',
              icon: AppAssets.directionUp,
              description: 'Continue onto St Stephen’s Gn',
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.switch2,
                  ),
                  const Gap(20),
                  TextBold(
                    'Dun Laoghaire Pharmacy',
                    style: GoogleFonts.roboto(
                      fontSize: 14,
                      color: AppColors.grey900,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class StepsItem extends StatelessWidget {
  const StepsItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.description});
  final String title;
  final String icon;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          const Gap(28),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBold(
                  title,
                  style: GoogleFonts.roboto(
                    fontSize: 14,
                    color: AppColors.grey900,
                  ),
                ),
                TextBody(
                  description,
                  style: GoogleFonts.roboto(
                    fontSize: 12,
                    color: AppColors.grey,
                  ),
                ),
                const Gap(10),
                Container(
                  height: 1,
                  color: AppColors.grey200,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
