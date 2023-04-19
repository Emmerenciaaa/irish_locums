import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldColor,
        body: Stack(
          children: [
            const AppBarContainer(
              title: 'More',
              subtitle: '',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 17,
                      ),
                      child: Column(
                        children: [
                          const Gap(20),
                          MoreItemsWidget(
                            icon: AppAssets.profileIcon,
                            title: 'Profile',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.profilePage,
                              );
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.documentIcon,
                            title: 'My Documents',
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RouteName.myDocumentScreen);
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.locationIcon,
                            title: 'My Location',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.myLocationScreenn,
                              );
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.cpdIcon,
                            title: 'CPD Hub',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.cpdScreen,
                              );
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.settingIcon,
                            title: 'Settings',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.settingScreen,
                              );
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.faqIcon,
                            title: 'FAQs',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.faqsScreen,
                              );
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.referralIcon,
                            title: 'Referrals',
                            onTap: () {
                              Navigator.pushNamed(
                                context,
                                RouteName.referralScreen,
                              );
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.shoppingIcon,
                            title: 'My Application',
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RouteName.myApplicationScreen);
                            },
                          ),
                          MoreItemsWidget(
                            icon: AppAssets.bookmarkIcon,
                            title: 'My Bookmarks',
                            onTap: () {
                              Navigator.pushNamed(
                                  context, RouteName.myBookmarkScreen);
                            },
                          ),
                          const Gap(16),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, RouteName.signin);
                            },
                            child: Container(
                              height: 50,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.red,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppAssets.loginnIcon),
                                  const Gap(13),
                                  TextBody(
                                    'Sign Out',
                                    color: AppColors.white,
                                    fontSize: 14,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}

class MoreItemsWidget extends StatelessWidget {
  const MoreItemsWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final String icon;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 16,
      ),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 48,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: SvgPicture.asset(
              icon,
              height: 24,
              width: 18,
            ),
            title: TextBody(
              title,
              fontSize: 14,
              color: AppColors.grey900,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: AppColors.grey,
              size: 15,
            ),
          ),
        ),
      ),
    );
  }
}
