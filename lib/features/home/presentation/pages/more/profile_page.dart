import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/app/shared/busy_button.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/navigators/route_name.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const AppBarContainer(
                  title: 'Profile',
                  subtitle: '',
                  showBackIcon: true,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 95),
                  child: Align(
                    child: Container(
                      height: 107,
                      width: 107,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.49),
                          color: AppColors.white,
                          border: Border.all(
                            width: 3.6,
                            color: AppColors.white,
                          )),
                      child: Image.asset(
                        AppAssets.manImage,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Gap(33),
            InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RouteName.changePasswordScreen,
                );
              },
              child: Container(
                height: 34,
                width: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.primaryBlue,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      AppAssets.editIcon,
                    ),
                    const Gap(8),
                    TextBody(
                      'Edit profile',
                      fontSize: 12,
                      color: AppColors.blue500,
                    ),
                  ],
                ),
              ),
            ),
            const Gap(12),
            const ProfileItem(
              item: 'Patrick TJ',
              label: 'Full Name',
            ),
            const ProfileItem(
              item: 'Patricktj@gmail.com',
              label: 'Email',
            ),
            const ProfileItem(
              item: '+1-812345678901',
              label: 'Phone Number',
            ),
            const ProfileItem(
              item: '245681-27893-890',
              label: 'PSNI Number',
            ),
            const ProfileItem(
              item: '-',
              label: 'Gender',
            ),
            const ProfileItem(
              item: 'Pharmacist',
              label: 'Occupation',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: BusyButton(
                title: 'Save changes',
                onTap: () {},
                buttonColor: AppColors.primaryColor,
                textColor: AppColors.tertiaryTextColor,
              ),
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    super.key,
    required this.item,
    required this.label,
  });
  final String label;
  final String item;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBold(
            label,
            fontSize: 12,
            color: AppColors.grey100,
          ),
          const Gap(5),
          SizedBox(
            height: 20,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: GoogleFonts.inter(
                      color: AppColors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    controller: TextEditingController(
                      text: item,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SvgPicture.asset(
                  AppAssets.editIcon,
                  width: 9,
                  height: 9,
                )
              ],
            ),
          ),
          const Gap(6),
          Container(
            height: 1,
            color: AppColors.grey20,
          )
        ],
      ),
    );
  }
}
