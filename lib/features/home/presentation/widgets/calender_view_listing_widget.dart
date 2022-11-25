import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/home/presentation/widgets/calender_filter_modal.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

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
      child: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
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
              const Gap(19),
              TextBody(
                'Tap on the highlighted dates on the calendar to view details',
                color: AppColors.grey,
                fontSize: 12,
              ),
              const Gap(24),
              Container(
                height: 425,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 23,
                    vertical: 26,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SfDateRangePicker(
                        view: DateRangePickerView.month,
                        selectionColor: AppColors.primaryColor,
                        selectionMode: DateRangePickerSelectionMode.multiple,
                        selectionShape: DateRangePickerSelectionShape.circle,
                        monthViewSettings:
                            const DateRangePickerMonthViewSettings(
                          firstDayOfWeek: 1,
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 4,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                    color: AppColors.primaryColor),
                              ),
                              const Gap(8),
                              TextBody(
                                'Pending',
                                fontSize: 12,
                                color: AppColors.tertiaryTextColor,
                              ),
                              const Gap(27),
                              Container(
                                height: 20,
                                width: 4,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                    color: AppColors.lightBlue),
                              ),
                              const Gap(8),
                              TextBody(
                                'Vacancies',
                                fontSize: 12,
                                color: AppColors.tertiaryTextColor,
                              ),
                              const Gap(27),
                              Container(
                                height: 20,
                                width: 4,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(5),
                                      bottomLeft: Radius.circular(5),
                                    ),
                                    color: Color(0xff1C83AC)),
                              ),
                              const Gap(8),
                              TextBody(
                                'Booked',
                                fontSize: 12,
                                color: AppColors.tertiaryTextColor,
                              ),
                            ],
                          ),
                          const Gap(28),
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 4,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  color: Color(0xffBEF264),
                                ),
                              ),
                              const Gap(8),
                              TextBody(
                                'Completed',
                                fontSize: 12,
                                color: AppColors.tertiaryTextColor,
                              ),
                              const Gap(27),
                              Container(
                                height: 20,
                                width: 4,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                  ),
                                  color: Color(0xffFB923C),
                                ),
                              ),
                              const Gap(8),
                              TextBody(
                                'Unverified',
                                fontSize: 12,
                                color: AppColors.tertiaryTextColor,
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
