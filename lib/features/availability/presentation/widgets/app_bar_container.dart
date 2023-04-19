import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class AppBarContainer extends StatefulWidget {
  const AppBarContainer({
    super.key,
    required this.title,
    required this.subtitle,
    this.showBackIcon = false,
  });
  final String title;
  final String subtitle;
  final bool showBackIcon;
  @override
  State<AppBarContainer> createState() => _AppBarContainerState();
}

class _AppBarContainerState extends State<AppBarContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 144,
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  const Color(0xff216B89).withOpacity(0.8),
                  const Color(0xff253966).withOpacity(0.8)
                ],
              ).createShader(bounds);
            },
            child: Image.asset(
              AppAssets.moneyBackground,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                widget.showBackIcon
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(30),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: AppColors.white,
                              size: 20,
                            ),
                          ),
                          const Gap(17),
                        ],
                      )
                    : const SizedBox(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextBold(
                            widget.title,
                            color: AppColors.white,
                            fontSize: 24,
                          ),
                          const Gap(10),
                          TextBody(
                            widget.subtitle,
                            fontSize: 12,
                            color: AppColors.white,
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 22,
                      width: 121,
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(AppAssets.switchIcon),
                            TextBody(
                              'Switch off calls',
                              fontSize: 12,
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Gap(10)
              ],
            ),
          )
        ],
      ),
    );
  }
}
