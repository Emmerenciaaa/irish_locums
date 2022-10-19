import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:irish_locums/core/navigators/route_name.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({
    required this.currentIndexPage,
    required this.image,
    required this.onTap,
    required this.text,
    required this.title,
    this.textColor,
    super.key,
  });

  final String image;
  final String title;
  final String text;
  final double currentIndexPage;
  final Color? textColor;

  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(27),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
              colorFilter:ColorFilter.mode(AppColors.backgroundfade.withOpacity(0.5),BlendMode.multiply)
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 70),
                child: Image(
                    image:AssetImage(
                        AppAssets.logo),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: TextBold(
                      title,
                      color: textColor ?? Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  gapSmall,
                  gapTiny,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Center(
                      child: TextBody(
                        text,
                        fontSize: 18,
                        color: textColor ?? Colors.white,
                      ),
                    ),
                  ),
                  gapLarge,
                  gapTiny,
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.authStartPage,
                      );
                    },
                    child: Center(
                      child: TextBody(
                        'skip',
                        fontSize: 24,
                        color: AppColors.yellow,
                      ),
                    ),
                  ),
                  gapTiny,
                  gapSmall,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DotsIndicator(
                        dotsCount: 4,
                        position: currentIndexPage,
                        decorator: const DotsDecorator(
                          color: AppColors.dotColor, // Inactive color
                          activeColor:AppColors.yellow,
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: AppColors.yellow,
                        onPressed: onTap,
                        child:SvgPicture.asset(
                          AppAssets.forwardArrow,
                        ),
                      )
                    ],
                  ),
                ],
              ),

              // const Gap(10),
            ],
          ),
        ),
      ],
    );
  }
}
