import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:irish_locums/features/home/presentation/widgets/job_view_widget.dart';

class JobsScreen extends StatefulWidget {
  const JobsScreen({super.key});

  @override
  State<JobsScreen> createState() => _JobsScreenState();
}

class _JobsScreenState extends State<JobsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarContainer(
              title: 'Jobs',
              subtitle: '',
            ),
            const Gap(15),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 17,
              ),
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      SvgPicture.asset(AppAssets.searchIcon),
                      const Gap(20),
                      Expanded(
                        child: TextFormField(
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search Jobs',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.grey2,
                              )),
                        ),
                      ),
                      const Gap(10),
                      Row(
                        children: [
                          Container(
                            width: 1,
                            height: 35,
                            color: AppColors.grey2,
                          ),
                          const Gap(20),
                          InkWell(
                            onTap: () {},
                            child: SvgPicture.asset(
                              AppAssets.filterIcon,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: List.generate(5, (index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 17),
                  child: Container(
                    height: 196,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 22,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBold(
                            'Support Pharmacist',
                            color: AppColors.tertiaryTextColor,
                            fontSize: 14,
                          ),
                          const Gap(12),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.locationIcon),
                              const Gap(10),
                              TextBody(
                                'Dublin, 30km from you',
                                fontSize: 10,
                                color: AppColors.tertiaryTextColor
                                    .withOpacity(0.39),
                              )
                            ],
                          ),
                          const Gap(12),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.timeIcon),
                              const Gap(10),
                              TextBody(
                                'Tuesday 21st, September, 2022',
                                fontSize: 10,
                                color: AppColors.tertiaryTextColor
                                    .withOpacity(0.39),
                              )
                            ],
                          ),
                          const Gap(12),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.home),
                              const Gap(10),
                              TextBody(
                                'Dun Laoghaire - Permanent',
                                fontSize: 10,
                                color: AppColors.tertiaryTextColor
                                    .withOpacity(0.39),
                              )
                            ],
                          ),
                          const Gap(12),
                          RichText(
                            text: TextSpan(
                              text: '\$ 20.31/hr',
                              style: GoogleFonts.lato(
                                fontSize: 11,
                                fontWeight: FontWeight.w700,
                                color: AppColors.tertiaryTextColor,
                              ),
                              children: [
                                TextSpan(
                                  text: '\$161.04 (total)',
                                  style: GoogleFonts.lato(
                                    fontSize: 9,
                                    color: AppColors.tertiaryTextColor
                                        .withOpacity(0.39),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(12),
                          InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                  isDismissible: false,
                                  isScrollControlled: true,
                                  context: context,
                                  builder: (context) {
                                    return const JobViewWidget();
                                  });
                            },
                            child: Container(
                              height: 40,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Center(
                                  child: TextBody(
                                'View',
                                fontSize: 14,
                                color: AppColors.tertiaryTextColor,
                              )),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
