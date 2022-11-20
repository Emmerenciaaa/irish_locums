import 'package:flutter/material.dart';
import 'package:irish_locums/app/shared/app_bar.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/app/shared/input_field.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/auth/presentation/widgets/upload_widget.dart';

class SecondResume extends StatefulWidget {
  const SecondResume({Key? key}) : super(key: key);

  @override
  State<SecondResume> createState() => _SecondResumeState();
}

class _SecondResumeState extends State<SecondResume> {

  bool isChecked = false;

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.blue;
    }
    return AppColors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset : false,
        backgroundColor: AppColors.white,
        appBar: const IrishAppBar(),
        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: SizedBox(
              //height: MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top- MediaQuery.of(context).padding.top-44,
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
                        'Professional Headline',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      gapTiny,
                      const InputField(
                        controller: null,
                        placeholder: '',
                        placeholderColor: AppColors.borderColor,
                      ),
                      gapTiny,
                      TextBody(
                        'Describe yourself in a few words, for example: Experienced Web Developer',
                        fontWeight: FontWeight.bold,
                        color: AppColors.hintColor,
                        fontSize: 12,
                      ),
                      gapSmall,
                      gapMedium,
                      TextBody(
                        'Profile Summary',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      gapTiny,
                      const UploadWidget(),
                      gapTiny,
                      TextBody(
                        'Upload a document with your skills, specialities, experience or goals',
                        fontWeight: FontWeight.bold,
                        color: AppColors.hintColor,
                        fontSize: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: isChecked,
                            fillColor:
                            MaterialStateProperty.resolveWith(getColor),
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          gapTiny,
                          TextBody(
                            'Show my resume in search results',
                            fontWeight: FontWeight.bold,
                            color: AppColors.hintColor,
                            fontSize: 12,
                          ),
                        ],
                      ),
                      gapLarge,

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 120),
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
                              RouteName.signupEmployeeUpload,
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
