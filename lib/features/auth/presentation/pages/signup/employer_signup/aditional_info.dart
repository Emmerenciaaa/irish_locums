import 'package:flutter/material.dart';
import 'package:irish_locums/app/shared/app_bar.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/app/shared/input_field.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';
import 'package:irish_locums/core/navigators/route_name.dart';

class AdditionalInfo extends StatefulWidget {
  const AdditionalInfo({Key? key}) : super(key: key);

  @override
  State<AdditionalInfo> createState() => _AdditionalInfoState();
}

class _AdditionalInfoState extends State<AdditionalInfo> {
  final _countyDropdown = [
    'MPS',
    'McLernons',
    'QuickScript',
    'QuickScript.net',
    'Touchstore'
  ];
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
    return AppColors.yellow;
  }

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
                        'Employer Sign-Up',
                        color: AppColors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      gapSmall,
                      TextBody(
                        'Additional Info',
                        fontWeight: FontWeight.bold,
                        color: AppColors.textGrey,
                        fontSize: 12,
                      ),
                      gapMedium,
                      gapSmall,
                      TextBody(
                        'Pharmacy Dispensing Software',
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
                            items: _countyDropdown.map((e) {
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
                        'Pharmacy Registration Number',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      gapTiny,
                      const InputField(
                        controller: null,
                        placeholder: '',
                        placeholderColor: AppColors.borderColor,
                      ),
                      gapMedium,
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
                          RichText(
                            text: const TextSpan(
                              style: TextStyle(
                                fontSize: 14.0,
                                color: AppColors.textGrey,
                              ),
                              children: <TextSpan>[
                                 TextSpan(
                                     text: 'I agree to the ',
                                   style: TextStyle(
                                     fontSize: 12
                                   ),
                                 ),
                                 TextSpan(
                                    text: 'Terms and Conditions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      color: AppColors.yellow,
                                      fontSize: 12,
                                    )),
                              ],
                            ),
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
                          title: 'Create Account',
                          color: AppColors.secondaryColor,
                          textColor: AppColors.black,
                          onTap: () {
                            Navigator.pushReplacementNamed(
                              context,
                              RouteName.signupUserUpload,
                            );
                          },
                        ),
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
