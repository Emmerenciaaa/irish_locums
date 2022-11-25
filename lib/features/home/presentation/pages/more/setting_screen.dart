import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const AppBarContainer(
            title: 'Settings',
            subtitle: '',
            showBackIcon: true,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 17,
            ),
            child: Column(
              children: [
                BusyButton(
                  title: 'Save changes',
                  onTap: () {},
                  buttonColor: AppColors.primaryColor,
                  textColor: AppColors.tertiaryTextColor,
                ),
                const Gap(20),
              ],
            ),
          )
        ],
      ),
    );
  }
}
