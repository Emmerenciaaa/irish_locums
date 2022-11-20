import 'package:flutter/material.dart';
import 'package:irish_locums/app/shared/app_bar.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/auth/presentation/widgets/upload_widget.dart';

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {

  final _category = ['DOCTOR','HEALTHCARE ASSISTANT','NURSE','PHARMACIST','PHARMACY TECHNICIAN','SOCIAL CARE WORKER'];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: AppColors.white,
        appBar: const IrishAppBar(),
        body:Padding(
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
                        'Resume',
                        fontWeight: FontWeight.bold,
                        color: AppColors.textGrey,
                        fontSize: 12,
                      ),
                      gapMedium,
                      gapSmall,
                      TextBody(
                        'Category',
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
                            decoration: const InputDecoration(
                                border:InputBorder.none
                            ),
                            dropdownColor: AppColors.backgroundLightBlue,
                            onChanged: (val){},
                            items: _category.map(
                                    (e){
                                  return DropdownMenuItem(value: e,child: Text(e),);
                                }
                            ).toList(),

                          ),
                        ),
                      ),
                      gapSmall,
                      gapMedium,
                      TextBody(
                        'Resume',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      gapTiny,
                      const UploadWidget(),
                      gapTiny,
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 14.0,
                            color: AppColors.textGrey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'NOTE ',
                              style: TextStyle(
                                  fontSize: 12,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            TextSpan(
                                text: 'This will be visible to ALL employers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.hintColor,
                                  fontSize: 12,
                                )),
                          ],
                        ),
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
                          color: AppColors.yellow,
                          textColor: AppColors.black,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RouteName.signupEmployeeResumeSecond,
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
                                  color:AppColors.indicatorActiveColor
                              ),
                              child: Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color:AppColors.indicatorActiveColor
                              ),
                              child: Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color:AppColors.indicatorActiveColor
                              ),
                              child: Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color:AppColors.indicatorActiveColor
                              ),
                              child: Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color:AppColors.indicatorActiveColor
                              ),
                              child: Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color:AppColors.dotColor
                              ),
                              child: Text(''),
                            ),
                            gapTiny,
                            Container(
                              width: 22,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color:AppColors.dotColor
                              ),
                              child: Text(''),
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
        )
    );
  }
}
