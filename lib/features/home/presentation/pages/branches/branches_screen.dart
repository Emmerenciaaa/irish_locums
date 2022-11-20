import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:irish_locums/features/home/presentation/widgets/loading_branch_widgets.dart';

class BranchesScreen extends StatefulWidget {
  const BranchesScreen({super.key});

  @override
  State<BranchesScreen> createState() => _BranchesScreenState();
}

class _BranchesScreenState extends State<BranchesScreen> {
  bool getbrnaches = true;
  getBranches() {
    setState(() {
      getbrnaches = false;
    });
  }

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 1),
      getBranches,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarContainer(
              title: 'Branches',
              subtitle: 'Branches you’ve subscribed to would be shown here',
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
                              hintText: 'Search Branches',
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: AppColors.grey2,
                              )),
                        ),
                      ),
                      const Gap(10),
                    ],
                  ),
                ),
              ),
            ),
            getbrnaches
                ? const LoadingBranches()
                : Column(
                    children: List.generate(5, (index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 17,
                          vertical: 15,
                        ),
                        child: Container(
                          height: 138,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextBold(
                                  'General Hospital, Dublin',
                                  color: AppColors.tertiaryTextColor,
                                  fontSize: 14,
                                ),
                                const Gap(9),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      AppAssets.locationIcon,
                                    ),
                                    const Gap(10),
                                    TextBody(
                                      'Dublin, 30km from you',
                                      color: AppColors.tertiaryTextColor
                                          .withOpacity(0.39),
                                      fontSize: 10,
                                    )
                                  ],
                                ),
                                const Gap(8),
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
                                const Gap(8),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    height: 40,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: AppColors.primaryColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                        child: TextBody(
                                      'Unsubscribe',
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
                  ),
          ],
        ),
      ),
    );
  }
}
