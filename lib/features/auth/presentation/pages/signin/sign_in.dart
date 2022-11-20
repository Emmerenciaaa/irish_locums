import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irish_locums/app/shared/app_bar.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/app/shared/input_field.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
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
              height: MediaQuery.of(context).size.height-MediaQuery.of(context).padding.top- MediaQuery.of(context).padding.top-44,
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
                          'Sign-In',
                        color: AppColors.black,
                      ),
                      gapLarge,
                      gapSmall,
                      gapTiny,
                      TextBody(
                        'Email Address',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                      const InputField(
                          controller: null,
                          placeholder: 'Patricktj@gmail.com',
                        placeholderColor: AppColors.borderColor,
                      ),
                      gapLarge,
                      TextBody(
                        'Password',
                        color: AppColors.black,
                        fontSize: 14,
                      ),
                       InputField(
                        controller: null,
                        placeholder: '**********',
                        placeholderColor: AppColors.borderColor,
                        suffix: SvgPicture.asset(
                            AppAssets.visibility),
                      ),
                      gapTiny,
                      TextBody(
                        'Forgot Password?',
                        color: AppColors.yellow,
                        fontSize: 14,
                      ),

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 120),
                        child: BusyButton(
                            title: 'Sign-In',
                            color: AppColors.secondaryColor,
                            onTap: (){},
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
