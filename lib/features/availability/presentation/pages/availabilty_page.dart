import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:irish_locums/features/availability/presentation/widgets/availability_filter_modal.dart';

class AvailabilityPage extends StatelessWidget {
  const AvailabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Column(
        children: [
          const AppBarContainer(
            title: 'Availabity',
            subtitle:
                'Select the days you are available to be contacted about work that suits you',
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
                            hintText: 'Search Date',
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
                                isScrollControlled: true,
                                isDismissible: false,
                                context: context,
                                builder: (context) {
                                  return const AvailabilityFilterModal();
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
        ],
      ),
    );
  }
}
