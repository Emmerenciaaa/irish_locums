import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/home/presentation/widgets/calender_view_listing_widget.dart';
import 'package:irish_locums/features/home/presentation/widgets/home_nav_widget.dart';
import 'package:irish_locums/features/home/presentation/widgets/map_listing_view_widget.dart';
import 'package:irish_locums/features/home/presentation/widgets/shift_listing_widget.dart';

class ShiftListingPage extends StatefulWidget {
  const ShiftListingPage({super.key});

  @override
  State<ShiftListingPage> createState() => _ShiftListingPageState();
}

bool shiftList = true;
bool mapListing = false;
bool calender = false;

class _ShiftListingPageState extends State<ShiftListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 144,
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Stack(
                children: [
                  ShaderMask(
                    shaderCallback: (bounds) {
                      return LinearGradient(
                        colors: [
                          const Color(0xff216B89).withOpacity(0.8),
                          const Color(0xff253966).withOpacity(0.8)
                        ],
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      AppAssets.moneyBackground,
                      height: double.infinity,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      children: [
                        const Gap(58),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 22,
                            width: 121,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SvgPicture.asset(AppAssets.switchIcon),
                                  TextBody(
                                    'Switch off calls',
                                    fontSize: 12,
                                    color: AppColors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Gap(40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            HomeNavWidget(
                              isSlected: shiftList,
                              tile: 'Shift listing view',
                              onTap: () {
                                setState(() {
                                  shiftList = true;
                                  calender = false;
                                  mapListing = false;
                                });
                              },
                            ),
                            HomeNavWidget(
                              isSlected: mapListing,
                              tile: 'Map Listing view',
                              onTap: () {
                                setState(() {
                                  shiftList = false;
                                  mapListing = true;
                                  calender = false;
                                });
                              },
                            ),
                            HomeNavWidget(
                              isSlected: calender,
                              tile: 'Calendar Listing view',
                              onTap: () {
                                setState(() {
                                  mapListing = false;
                                  calender = true;
                                  shiftList = false;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            shiftList
                ? const ShiftListingWidget()
                : mapListing
                    ? const MapListingViewWidget()
                    : const CalenderViewWidget()
          ],
        ),
      ),
    );
  }
}
