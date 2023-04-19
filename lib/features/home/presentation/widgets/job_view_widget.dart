import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class JobViewWidget extends StatefulWidget {
  const JobViewWidget({super.key});

  @override
  State<JobViewWidget> createState() => _JobViewWidgetState();
}

class _JobViewWidgetState extends State<JobViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 17, right: 17, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.darkGrey),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        size: 10,
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ),
                ),
                TextBold(
                  'Dun Laoghaire Pharmacy',
                  color: AppColors.tertiaryTextColor,
                  fontSize: 14,
                ),
                const SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 42,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(6),
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      AppAssets.clinic2,
                      height: 214,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Gap(14),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 17,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextBold(
                              'Support Pharmacist',
                              color: AppColors.grey900,
                              fontSize: 14,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(AppAssets.shareIcon),
                                const Gap(32),
                                SvgPicture.asset(AppAssets.bookmarkIcon)
                              ],
                            ),
                          ],
                        ),
                        const Gap(15),
                        RichText(
                          text: TextSpan(
                              text: '\$ 20.31/hr',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: AppColors.grey900,
                              ),
                              children: [
                                TextSpan(
                                  text: '/\$161.04',
                                  style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ]),
                        ),
                        const Gap(14),
                        TextBody(
                          'Tuesday 21st September, 2022',
                          color: AppColors.grey,
                          fontSize: 12,
                        ),
                        const Gap(23),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.grey200,
                        ),
                        const Gap(32),
                        TextBold(
                          'Overview',
                          color: AppColors.blackColor,
                          fontSize: 14,
                        ),
                        const Gap(22),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBody(
                                  'Role',
                                  color: AppColors.grey,
                                  fontSize: 12,
                                ),
                                TextBody(
                                  'Support Pharmacist',
                                  color: AppColors.blackColor,
                                  fontSize: 14,
                                )
                              ],
                            ),
                            const Gap(53),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBody(
                                  'Job type',
                                  color: AppColors.grey,
                                  fontSize: 12,
                                ),
                                TextBody(
                                  'Permanent',
                                  color: AppColors.blackColor,
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ],
                        ),
                        const Gap(30),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBody(
                                  'Time',
                                  color: AppColors.grey,
                                  fontSize: 12,
                                ),
                                TextBody(
                                  '9:00am - 6:30pm',
                                  color: AppColors.blackColor,
                                  fontSize: 14,
                                )
                              ],
                            ),
                            const Gap(73),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBody(
                                  'Location',
                                  color: AppColors.grey,
                                  fontSize: 12,
                                ),
                                TextBody(
                                  'Dublin, Ireland',
                                  color: AppColors.blackColor,
                                  fontSize: 14,
                                )
                              ],
                            ),
                          ],
                        ),
                        const Gap(22),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: AppColors.grey200,
                        ),
                        const Gap(32),
                        TextBold(
                          'Work Progress',
                          color: AppColors.blackColor,
                          fontSize: 14,
                        ),
                        const Gap(13),
                        LinearPercentIndicator(
                          padding: const EdgeInsets.all(0),
                          percent: 0.3,
                          progressColor: AppColors.blue500,
                        ),
                        const Gap(19),
                        BusyButton(
                          title: 'Quit',
                          onTap: () {},
                          buttonColor: AppColors.red600,
                        ),
                        const Gap(30)
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
