import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/onboarding/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                children: [
                  PageViewWidget(
                    image: AppAssets.onboarding,
                    onTap: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.bounceIn,
                      );
                    },
                    text:
                    'We offer work experience as well as flexible level 5 and diploma programs to meet your healthcare needs.',
                    title: 'Work Opportunities',
                  ),
                  PageViewWidget(
                    image: AppAssets.onboarding3,
                    onTap: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.bounceIn,
                      );
                    },
                    text:
                    'Depending on your contract, we will ensure that all employees who work during the month are paid at the end of the month.',
                    title: 'Regular Payment',
                  ),
                  PageViewWidget(
                    image: AppAssets.onboarding1,
                    onTap: () {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.bounceIn,
                      );
                    },
                    text:
                    'We also offer mentoring to foreign-trained pharmacists who want to practice in Ireland.',
                    title: 'Mentoring',
                  ),
                  PageViewWidget(
                    image: AppAssets.onboarding2,
                    onTap: () {
                      Navigator.pushReplacementNamed(
                        context,
                        RouteName.authStartPage,
                      );
                    },
                    text:
                    'We are open 365 days a year.\n Mon - Fri 8:00 am - 5:00 pm \n Sat - Sun 8:00 am - 1:00 pm',
                    title: '365-Day Support',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
