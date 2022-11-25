import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:irish_locums/features/home/presentation/widgets/my_location_filter.dart';

class MyLocationScreen extends StatefulWidget {
  const MyLocationScreen({super.key});

  @override
  State<MyLocationScreen> createState() => _MyLocationScreenState();
}

class _MyLocationScreenState extends State<MyLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Stack(
        children: [
          const AppBarContainer(
            title: 'My Locations',
            subtitle:
                'Subscribe to towns to receive\nupdates once shifts are available',
            showBackIcon: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 164,
              left: 17,
              right: 17,
              bottom: 20,
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
                          onTap: () {
                            showModalBottomSheet(
                                isDismissible: false,
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return const MyLocationFilter();
                                });
                          },
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
          Padding(
            padding: const EdgeInsets.only(
              top: 220,
            ),
            child: SingleChildScrollView(
              child: Column(
                  children: List.generate(8, (index) {
                return const MyLocationItem();
              })),
            ),
          )
        ],
      ),
    );
  }
}

class MyLocationItem extends StatefulWidget {
  const MyLocationItem({
    super.key,
  });

  @override
  State<MyLocationItem> createState() => _MyLocationItemState();
}

bool isSubscibed = false;

class _MyLocationItemState extends State<MyLocationItem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 17),
        child: Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextBold(
                  'Waterford',
                  color: AppColors.tertiaryTextColor,
                  fontSize: 14,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      isSubscibed = !isSubscibed;
                    });
                  },
                  child: Container(
                    height: 24,
                    width: 72,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: isSubscibed
                            ? AppColors.red
                            : AppColors.primaryColor),
                    child: Center(
                      child: TextBody(
                        isSubscibed ? 'Unsubscribe' : 'Subscribe',
                        fontSize: 10,
                        color: isSubscibed
                            ? AppColors.white
                            : AppColors.tertiaryTextColor,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
