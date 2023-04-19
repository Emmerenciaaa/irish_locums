import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:irish_locums/features/availability/presentation/widgets/availability_filter_modal.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class AvailabilityPage extends StatelessWidget {
  const AvailabilityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Stack(
        children: [
          const AppBarContainer(
            title: 'Availabity',
            subtitle:
                'Select the days you are available to be contacted about work that suits you',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 164, left: 17, right: 17),
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
          Padding(
            padding: const EdgeInsets.only(
              top: 230,
              left: 9,
              right: 9,
            ),
            child: SingleChildScrollView(
              child: Container(
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
                                    color: Color(0xff4DB7FE)),
                              ),
                              const Gap(8),
                              RichText(
                                  text: TextSpan(
                                      text: 'Available:',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.tertiaryTextColor,
                                      ),
                                      children: [
                                    TextSpan(
                                        text: ' Click the date once',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.grey,
                                        ))
                                  ]))
                            ],
                          ),
                          const Gap(22),
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
                                    color: Color(0xffF87171)),
                              ),
                              const Gap(8),
                              RichText(
                                  text: TextSpan(
                                      text: 'Unavailable:',
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.tertiaryTextColor,
                                      ),
                                      children: [
                                    TextSpan(
                                        text: ' Double click the date',
                                        style: GoogleFonts.roboto(
                                          color: AppColors.grey,
                                        ))
                                  ]))
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
