import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:readmore/readmore.dart';

class ViewMyApplicatinnWidget extends StatefulWidget {
  const ViewMyApplicatinnWidget({super.key});

  @override
  State<ViewMyApplicatinnWidget> createState() =>
      _ViewMyApplicatinnWidgetState();
}

bool switchValue = true;

class _ViewMyApplicatinnWidgetState extends State<ViewMyApplicatinnWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 6,
                left: 17,
                right: 17,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      height: 14,
                      width: 14,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.darkGrey,
                        ),
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
                  TextBold(
                    'Adrian Dunne Pharmacy',
                    color: AppColors.tertiaryTextColor,
                    fontSize: 14,
                  ),
                  const SizedBox(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        AppAssets.clinicImage,
                        height: 214,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 17),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Gap(14),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextBold(
                                'MPS',
                                color: AppColors.grey900,
                                fontSize: 14,
                              ),
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.shareIcon,
                                    height: 15,
                                    width: 15,
                                  ),
                                  const Gap(33),
                                  SvgPicture.asset(
                                    AppAssets.bookmarkIcon,
                                  )
                                ],
                              )
                            ],
                          ),
                          const Gap(15),
                          RichText(
                            text: TextSpan(
                                text: '\$ 20.31/hr/',
                                style: GoogleFonts.roboto(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.grey900,
                                ),
                                children: [
                                  TextSpan(
                                    text: '/\$161.04 (total)',
                                    style: GoogleFonts.roboto(
                                      color: AppColors.grey900,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]),
                          ),
                          const Gap(14),
                          TextBody(
                            'Tuesday 21st September, 2022',
                            color: AppColors.grey,
                            fontSize: 12,
                          ),
                          const Gap(14),
                          TextBody(
                            'Status: Accepted',
                            color: AppColors.blue500,
                            fontSize: 12,
                          ),
                          const Gap(15),
                          Row(
                            children: [
                              SvgPicture.asset(AppAssets.directionIcon),
                              const Gap(10),
                              TextBody(
                                'View Direction',
                                color: AppColors.blue500,
                                fontSize: 12,
                              )
                            ],
                          ),
                          const Gap(24),
                          Container(
                            height: 1,
                            color: AppColors.grey200,
                          ),
                          const Gap(24),
                          TextBody(
                            'Overview',
                            color: AppColors.blackColor,
                            fontSize: 14,
                          ),
                          const Gap(22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextBody(
                                    'Role',
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                  const Gap(3),
                                  TextBody(
                                    'MPS',
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                  ),
                                  const Gap(30),
                                  TextBody(
                                    'Time',
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                  const Gap(3),
                                  TextBody(
                                    '9:00am - 6:30pm',
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextBody(
                                    'Job type',
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                  const Gap(3),
                                  TextBody(
                                    'Permanent',
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                  ),
                                  const Gap(30),
                                  TextBody(
                                    'Location',
                                    color: AppColors.grey,
                                    fontSize: 12,
                                  ),
                                  const Gap(3),
                                  TextBody(
                                    'Lucan, Ireland',
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                  )
                                ],
                              ),
                              const SizedBox(),
                            ],
                          ),
                          const Gap(22),
                          Container(
                            height: 1,
                            color: AppColors.grey200,
                          ),
                          const Gap(24),
                          TextBold(
                            'Job description & responsibilities',
                            color: AppColors.blackColor,
                            fontSize: 14,
                          ),
                          const Gap(22),
                          const ReadMoreText(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Urna, amet, nulla adipiscing magna nullam tincidunt volutpat sit senectus. Sit amet tellus ut volutpat lorem ultrices posuere turpis. Sed fames consequat volutpat lacinia lobortis nunc neque. Tristique ut lacus vitae amet',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.grey600),
                            trimLines: 4,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'ReadMore',
                            trimExpandedText: ' ReadLess',
                            moreStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: AppColors.secondaryColor),
                            colorClickableText: AppColors.secondaryColor,
                          ),
                          const Gap(22),
                          Container(
                            height: 1,
                            color: AppColors.grey200,
                          ),
                          const Gap(24),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextBold(
                                    'Set alert for similar openings',
                                    color: AppColors.blackColor,
                                    fontSize: 14,
                                  ),
                                  const Gap(14),
                                  TextBody(
                                    'Support Pharmacist, Dublin',
                                    color: AppColors.grey600,
                                    fontSize: 14,
                                  )
                                ],
                              ),
                              CupertinoSwitch(
                                value: switchValue,
                                activeColor: AppColors.blue500,
                                onChanged: (value) {
                                  setState(() {
                                    switchValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                          const Gap(22),
                          Container(
                            height: 1,
                            color: AppColors.grey200,
                          ),
                          const Gap(20),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
