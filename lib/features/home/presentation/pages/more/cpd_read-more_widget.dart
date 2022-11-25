import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class CdpReadMore extends StatefulWidget {
  const CdpReadMore({super.key});

  @override
  State<CdpReadMore> createState() => _CdpReadMoreState();
}

class _CdpReadMoreState extends State<CdpReadMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(20),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  child: Container(
                    height: 14,
                    width: 14,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.darkGrey),
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.close,
                        size: 10,
                        color: AppColors.darkGrey,
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(8),
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  AppAssets.cdpImg,
                  height: 161,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              const Gap(14),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextBold(
                                'Type 2 Diabetes Part 1',
                                fontSize: 14,
                                color: AppColors.grey900,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(AppAssets.shareIcon),
                                  const Gap(39),
                                  SvgPicture.asset(AppAssets.bookmarkIcon)
                                ],
                              )
                            ],
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.timeIcon),
                              const Gap(9),
                              TextBody(
                                '10 mins',
                                fontSize: 10,
                                color: AppColors.tertiaryTextColor
                                    .withOpacity(0.39),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Gap(23),
                    Container(
                      height: 1,
                      color: AppColors.grey200,
                    ),
                    const Gap(18),
                    TextBody(
                      'In our sith CPD post, Herbert Ferguson takes us through a short course on Type 2 Diabetes. Herbert Ferguson is the Pharmacists for Gores Pharmacy, with over 10 years experience in the field. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, amet, nulla adipiscing magna nullam tincidunt volutpat sit senectus. Sit amet tellus ut volutpat lorem ultrices posuere turpis. Sed fames consequat volutpat lacinia lobortis nunc neque. Tristique ut lacus vitae amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, amet, nulla adipiscing magna nullam tincidunt volutpat sit senectus. Sit amet tellus ut volutpat lorem ultrices posuere turpis. Sed fames consequat volutpat lacinia lobortis nunc neque. Tristique ut lacus vitae amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, amet, nulla adipiscing magna nullam tincidunt volutpat sit senectus. Sit amet tellus ut volutpat lorem ultrices posuere turpis. Sed fames consequat volutpat lacinia lobortis nunc neque. Tristique ut lacus vitae amet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, amet, nulla adipiscing magna nullam tincidunt volutpat sit senectus. Sit amet tellus ut volutpat lorem ultrices posuere turpis. Sed fames consequat volutpat lacinia lobortis nunc neque. Tristique ut lacus vitae amet....Read more ',
                      color: AppColors.grey600,
                      fontSize: 14,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
