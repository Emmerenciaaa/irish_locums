import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Stack(
        children: [
          const AppBarContainer(
            title: 'Referrals',
            subtitle: '',
            showBackIcon: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 144,
              left: 17,
              right: 17,
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Gap(20),
                      Image.asset(
                        AppAssets.referralImg,
                        height: 223,
                        width: 223,
                        fit: BoxFit.fill,
                      ),
                      const Gap(16),
                      TextSemiBold(
                        'Refer a locum and get bonuses ',
                        fontSize: 16,
                        color: AppColors.tertiaryTextColor,
                      ),
                      const Gap(10),
                      TextBody(
                        'Refer a locum and earn €10 for each shift that they\nwork. For example, refer a locum that works 10 shifts\nand get €100.',
                        fontSize: 12,
                        color: AppColors.grey,
                        textAlign: TextAlign.center,
                      ),
                      const Gap(24),
                      TextBody(
                        'REFERRAL CODE',
                        fontSize: 12,
                        color: AppColors.grey,
                      ),
                      const Gap(10),
                      Container(
                        height: 24,
                        width: 72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.slate100,
                        ),
                        child: Center(
                          child: TextSemiBold(
                            'XUTE789VC',
                            color: AppColors.black,
                            fontSize: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                    ),
                    child: Column(
                      children: [
                        BusyButton(
                          title: 'Send referral',
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
            ),
          ),
        ],
      ),
    );
  }
}
