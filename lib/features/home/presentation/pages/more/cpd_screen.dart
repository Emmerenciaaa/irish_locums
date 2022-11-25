import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:readmore/readmore.dart';

class CpdScreen extends StatefulWidget {
  const CpdScreen({super.key});

  @override
  State<CpdScreen> createState() => _CpdScreenState();
}

class _CpdScreenState extends State<CpdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Stack(
        children: [
          const AppBarContainer(
            title: 'CPD Hub',
            subtitle: '',
            showBackIcon: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 144,
              left: 14,
              right: 14,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(20),
                  Container(
                    height: 48,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: AppColors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          SvgPicture.asset(AppAssets.searchIcon),
                          const Gap(20),
                          Expanded(
                            child: TextFormField(
                              decoration: const InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search shift',
                                  hintStyle: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.grey2,
                                  )),
                            ),
                          ),
                          const Gap(10),
                          Row(
                            children: [
                              Container(
                                width: 1,
                                height: 35,
                                color: AppColors.grey2,
                              ),
                              const Gap(20),
                              InkWell(
                                onTap: () {},
                                child: SvgPicture.asset(
                                  AppAssets.filterIcon,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const Gap(16),
                  Column(
                    children: List.generate(
                      5,
                      (index) => const CpdItem(
                        image: AppAssets.cdpImg,
                        title: 'Type 2 Diabetes Part 1',
                        text:
                            'In our sith CPD post, Herbert Ferguson takes us through a short course on Type 2 Diabetes. Herbert Ferguson is the Pharmacists for Gores Pharmacy, with over 10 years experience in the field',
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CpdItem extends StatelessWidget {
  const CpdItem({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });
  final String image;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
      ),
      child: Container(
        height: 246,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  image,
                  height: 97,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const Gap(13),
              TextBold(
                title,
                fontSize: 14,
                color: AppColors.tertiaryTextColor,
              ),
              const Gap(9),
              ReadMoreText(
                text,
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey600,
                ),
                moreStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: AppColors.secondaryColor),
                colorClickableText: AppColors.secondaryColor,
                trimLines: 3,
                trimMode: TrimMode.Length,
                trimLength: 180,
                trimCollapsedText: 'Read More',
                trimExpandedText: '....Read More',
                callback: (value) {
                  Navigator.pushNamed(
                    context,
                    RouteName.cdpReadMorePage,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
