import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';
import 'package:irish_locums/core/navigators/route_name.dart';

class AuthStartPage extends StatefulWidget {
  const AuthStartPage({Key? key}) : super(key: key);

  @override
  State<AuthStartPage> createState() => _AuthStartPageState();
}

class _AuthStartPageState extends State<AuthStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage(AppAssets.background),
              fit: BoxFit.cover,
            )),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.stretch,
                    //   children: [
                    //     Container(
                    //       decoration: const BoxDecoration(
                    //           borderRadius: BorderRadius.only(
                    //               bottomLeft: Radius.circular(12.0),
                    //               bottomRight: Radius.circular(12.0)),
                    //           image: DecorationImage(
                    //               image: AssetImage(AppAssets.manImage),
                    //               fit: BoxFit.cover,
                    //           )),
                    //       child: const Padding(
                    //         padding: EdgeInsets.symmetric(horizontal: 48,vertical: 40),
                    //         child: Image(
                    //           image: AssetImage(AppAssets.logo),
                    //         ),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    const Padding(
                      padding: EdgeInsets.only(top: 98),
                      child: Image(
                        image: AssetImage(AppAssets.logo),
                      ),
                    ),
                    Column(
                      children: [
                        gapSmall,
                        gapMedium,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: TextBody(
                            'Start your journey with our community of active and thriving healthcare locums and professionals.',
                            maxLines: 3,
                            color: AppColors.white,
                            fontSize: 20,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        gapSmall,
                        gapSmall,
                        gapSmall,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 42),
                          child: Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: AppColors.secondaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Center(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: TextBody(
                                  'Locum Sign-Up',
                                  color: AppColors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        gapSmall,
                        gapTiny,
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RouteName.appNavPage,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 42),
                            child: Container(
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  child: TextBody(
                                    'Employer Sign-Up',
                                    color: AppColors.white,
                                    fontSize: 14,
                                  ),
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
                                  text: 'Already have an account?',
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
                                  ]),
                            )
                          ],
                        ),
                        gapLarge,
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
