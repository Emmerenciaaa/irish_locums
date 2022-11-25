import 'package:flutter/material.dart';
import 'package:irish_locums/app/shared/app_bar.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/app/shared/input_field.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';
import 'package:irish_locums/core/navigators/route_name.dart';

class EmployeeJobType extends StatefulWidget {
  const EmployeeJobType({Key? key}) : super(key: key);

  @override
  State<EmployeeJobType> createState() => _EmployeeJobTypeState();
}

class _EmployeeJobTypeState extends State<EmployeeJobType> {
  final _jobType = [
    'APPRENTICESHIP',
    'CONTRACT',
    'FIXED',
    'PART-TIME',
    'TEMPORARY',
    'PERMANENT'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.white,
        appBar: const IrishAppBar(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      gapMedium,
                      gapSmall,
                      H1(
                        'Employee Sign-Up',
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      gapSmall,
                      TextBody(
                        'Job Type',
                        fontWeight: FontWeight.bold,
                        color: AppColors.textGrey,
                        fontSize: 12,
                      ),
                      gapMedium,
                      gapSmall,
                      TextBody(
                        'Job Type',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      gapTiny,
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: DropdownButtonFormField(
                            decoration:
                                const InputDecoration(border: InputBorder.none),
                            dropdownColor: AppColors.backgroundLightBlue,
                            onChanged: (val) {},
                            items: _jobType.map((e) {
                              return DropdownMenuItem(
                                value: e,
                                child: Text(e),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      gapSmall,
                      gapMedium,
                      TextBody(
                        'Registration Number',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      const InputField(
                        controller: null,
                        placeholder: '',
                        placeholderColor: AppColors.borderColor,
                      ),
                      gapTiny,
                      TextBody(
                        'What is your pharmacist PSI number,doctor registration number or nurse registration number',
                        fontWeight: FontWeight.bold,
                        color: AppColors.hintColor,
                        fontSize: 12,
                      ),
                      gapLarge,
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        BusyButton(
                          title: 'Next',
                          buttonColor: AppColors.yellow,
                          textColor: AppColors.black,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RouteName.signupEmployeeResume,
                            );
                          },
                        ),
                        gapMedium,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.indicatorActiveColor),
                              child: const Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.indicatorActiveColor),
                              child: const Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.indicatorActiveColor),
                              child: const Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.indicatorActiveColor),
                              child: const Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.dotColor),
                              child: const Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.dotColor),
                              child: const Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: AppColors.dotColor),
                              child: const Text(''),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
