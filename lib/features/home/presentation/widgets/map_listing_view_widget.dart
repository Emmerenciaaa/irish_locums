import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class MapListingViewWidget extends StatefulWidget {
  const MapListingViewWidget({super.key});

  @override
  State<MapListingViewWidget> createState() => _MapListingViewWidgetState();
}

bool setNotificationRange = false;

class _MapListingViewWidgetState extends State<MapListingViewWidget> {
  RangeValues values2 = const RangeValues(1, 20);

  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 20;

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            AppAssets.map,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 23,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(AppAssets.searchIcon),
                    const Gap(20),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search shift',
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
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          setNotificationRange
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 17,
                    vertical: 53,
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: AppColors.white.withOpacity(0.66),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Gap(10),
                                Container(
                                  height: 24,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.slate900),
                                  child: Center(
                                    child: TextBody(
                                      '80',
                                      color: AppColors.white,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                                const Gap(9),
                                Slider(
                                  thumbColor: AppColors.white,
                                  inactiveColor: AppColors.grey,
                                  max: 100,
                                  divisions: 5,
                                  value: currentSliderValue,
                                  onChanged: (value) {},
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextBody(
                                      '30Km',
                                      color: const Color(0xffDADADA),
                                      fontSize: 10,
                                    ),
                                    TextBody(
                                      'Nationwide',
                                      color: AppColors.grey900,
                                      fontSize: 10,
                                    )
                                  ],
                                ),
                                const Gap(10),
                              ],
                            ),
                          ),
                        ),
                        const Gap(8),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                                child: TextBody(
                              'Apply',
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                              ),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 42, vertical: 23),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          setNotificationRange = true;
                        });
                      },
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                            child: TextBody(
                          'Set Notification Range',
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                          ),
                        )),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
