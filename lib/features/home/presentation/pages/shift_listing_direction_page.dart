
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/home/presentation/widgets/shift_listing_direction_widget.dart';
import 'package:irish_locums/features/home/presentation/widgets/steps_direction_widgets.dart';

class ShiftListingDirectionScreen extends StatefulWidget {
  const ShiftListingDirectionScreen({super.key});

  @override
  State<ShiftListingDirectionScreen> createState() =>
      _ShiftListingDirectionScreenState();
}

bool map = true;
bool steps = false;

class _ShiftListingDirectionScreenState
    extends State<ShiftListingDirectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              const Gap(20),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 17,
                ),
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
                            border: Border.all(
                              color: AppColors.darkGrey,
                            )),
                        child: const Center(
                          child: Icon(
                            Icons.close,
                            size: 10,
                            color: AppColors.darkGrey,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Dun Laoghaire Pharmacy',
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.tertiaryTextColor,
                      ),
                    ),
                    const SizedBox(),
                  ],
                ),
              ),
              const Gap(10),
              Container(
                height: 1,
                color: AppColors.grey200,
              ),
              map
                  ? const ShiftListingDirectionWidget()
                  : const Expanded(child: StepDirectionWidget()),
              Align(
                child: Container(
                  height: 34,
                  width: double.infinity,
                  color: AppColors.white,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            map = true;
                            steps = false;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  AppAssets.mapIcon,
                                  color: map
                                      ? AppColors.secondaryColor
                                      : AppColors.grey700,
                                ),
                                const Gap(6),
                                TextBold(
                                  'Map',
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    color: map
                                        ? AppColors.secondaryColor
                                        : AppColors.grey700,
                                  ),
                                )
                              ],
                            ),
                            const Gap(11),
                            Container(
                              height: 2,
                              width: 41,
                              color: map
                                  ? AppColors.secondaryColor
                                  : AppColors.white,
                            )
                          ],
                        ),
                      ),
                      const Gap(149),
                      InkWell(
                        onTap: () {
                          setState(() {
                            map = false;
                            steps = true;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(AppAssets.step,
                                    color: steps
                                        ? AppColors.secondaryColor
                                        : AppColors.grey700),
                                const Gap(6),
                                TextBold(
                                  'Steps',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      color: steps
                                          ? AppColors.secondaryColor
                                          : AppColors.grey700),
                                )
                              ],
                            ),
                            const Gap(11),
                            Container(
                              height: 2,
                              width: 41,
                              color: steps
                                  ? AppColors.secondaryColor
                                  : AppColors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
