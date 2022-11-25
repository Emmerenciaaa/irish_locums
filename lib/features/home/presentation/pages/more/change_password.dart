import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/app/shared/input_field.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppBarContainer(
              title: 'Profile',
              subtitle: 'Change your password to a new one',
              showBackIcon: true,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(30),
                  TextBody(
                    'Current Password',
                    color: AppColors.black,
                    fontSize: 14,
                  ),
                  InputField(
                      controller: TextEditingController(),
                      password: true,
                      placeholder: 'Current Password'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  TextBody(
                    'New Password',
                    color: AppColors.black,
                    fontSize: 14,
                  ),
                  InputField(
                      controller: TextEditingController(),
                      password: true,
                      placeholder: 'New Password'),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  BusyButton(
                    title: 'Change password',
                    onTap: () {},
                    buttonColor: AppColors.primaryColor,
                    textColor: AppColors.tertiaryTextColor,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
