// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class ShiftFilterModal extends StatelessWidget {
  const ShiftFilterModal({super.key});

  @override
  Widget build(BuildContext context) {
    RangeValues values = const RangeValues(1, 100);
    RangeValues values2 = const RangeValues(1, 70);
    return Container(
      height: MediaQuery.of(context).size.height * 0.9,
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(17),
            Container(
              height: 4,
              width: 47,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: AppColors.grey3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
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
                        size: 12,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(22),
            TextBold(
              'Filter',
              fontSize: 16,
              color: AppColors.blackColor,
            ),
            const Gap(13),
            Container(
              height: 1,
              color: AppColors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(24),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: TextBody(
                      'Full-time',
                      color: AppColors.grey900,
                      fontSize: 14,
                    ),
                    trailing: Checkbox(
                      shape: const CircleBorder(),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: TextBody(
                      'Part-time',
                      color: AppColors.grey900,
                      fontSize: 14,
                    ),
                    trailing: Checkbox(
                      shape: const CircleBorder(),
                      value: false,
                      onChanged: (value) {},
                    ),
                  ),
                  const Gap(24),
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextBold(
                      'Price (\$)',
                      fontSize: 14,
                      color: AppColors.grey900,
                    ),
                  ),
                  const Gap(16),
                  RangeSlider(
                    values: values,
                    activeColor: AppColors.blue500,
                    onChanged: (values) {},
                    min: 1,
                    max: 100,
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBody(
                            'Min',
                            fontSize: 12,
                            color: AppColors.blackColor,
                          ),
                          const Gap(5),
                          Container(
                            height: 24,
                            width: 72,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: AppColors.grey2,
                            )),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBody(
                            'Max',
                            fontSize: 12,
                            color: AppColors.blackColor,
                          ),
                          const Gap(5),
                          Container(
                            height: 24,
                            width: 72,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: AppColors.grey2,
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                  const Gap(33),
                  TextSemiBold(
                    'Distance',
                    fontSize: 14,
                    color: AppColors.grey900,
                  ),
                  const Gap(4),
                  TextBody(
                    '80km',
                    fontSize: 10,
                    color: AppColors.grey900,
                  ),
                  const Gap(11),
                  RangeSlider(
                    values: values2,
                    activeColor: AppColors.blue500,
                    onChanged: (value) {},
                    min: 1,
                    max: 100,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  InkWell(
                    onTap: () => print('Confirm'),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.secondaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: TextBody(
                          'Confirm',
                          color: AppColors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                  const Gap(30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
