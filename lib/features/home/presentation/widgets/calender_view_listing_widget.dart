import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/features/home/presentation/widgets/calender_filter_modal.dart';

class CalenderViewWidget extends StatefulWidget {
  const CalenderViewWidget({super.key});

  @override
  State<CalenderViewWidget> createState() => _CalenderViewWidgetState();
}

class _CalenderViewWidgetState extends State<CalenderViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          const Gap(15),
          Container(
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
                              isDismissible: false,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                              ),
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return const CalenderFilterModal();
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
        ],
      ),
    );
  }
}
