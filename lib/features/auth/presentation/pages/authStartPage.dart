import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';

class AuthStartPage extends StatefulWidget {
  const AuthStartPage({Key? key}) : super(key: key);

  @override
  State<AuthStartPage> createState() => _AuthStartPageState();
}

class _AuthStartPageState extends State<AuthStartPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.background),
                fit: BoxFit.cover,
            ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: screenWidth,
                  child: const Image(
                    image: AssetImage(AppAssets.manImage),
                  ),
                  //height: screenHeight*0.9,
                  // child:Column(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   children: const [
                  //     Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 0),
                  //       child: Image(
                  //         image: AssetImage(AppAssets.logo),
                  //       ),
                  //     ),
                  //     gapLarge
                  //   ],
                  // ) ,
                ),
                const Positioned(
                  top: 65,
                  right: 40,
                  child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                   child: Image(
                     image: AssetImage(AppAssets.logo),
                  ),
              ),
                ),
              ],
            ),
            Column(
              children: [
                gapTiny,
                gapMedium,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextBody(
                    'Start your journey with our community of active and thriving healthcare locums and professionals.',
                    maxLines: 3,
                    color: AppColors.white,
                    fontSize: 20,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 42),
                  child: Container(
                    width: double.infinity,
                    decoration:const BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:16),
                        child: TextBody(
                          'Locum Sign-Up',
                          color: AppColors.white,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),
                gapTiny,
                gapSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                          text:'Already have an account?  ',
                          style: TextStyle(
                            color: AppColors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )

                          ]
                      ),
                    )
                  ],
                ),
                gapSmall
              ],
            )
          ],
        ),
      ),
    );
  }
}
