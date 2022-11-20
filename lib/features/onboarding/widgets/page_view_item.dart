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
              //colorFilter:ColorFilter.mode(AppColors.backgroundfade.withOpacity(0.5),BlendMode.multiply)
          )),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration:  BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: <Color>[
                Color(0xff216B89).withOpacity(0.65),
                Color(0xff253966).withOpacity(0.65),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(27),
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
                  TextBody(
                    text,
                    fontSize: 18,
                    height: 1.6,
                    textAlign: TextAlign.center,
                    color: textColor ?? Colors.white,
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
                        fontSize: 16,
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
                      Container(
                        height: 40,
                        width: 40,
                        child: FloatingActionButton(
                          backgroundColor: AppColors.yellow,
                          onPressed: onTap,
                          child:Container(
                            height:25,
                            width: 25,
                            child: SvgPicture.asset(
                              AppAssets.forwardArrow,
                              color: AppColors.white,
                            ),
                          ),
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
