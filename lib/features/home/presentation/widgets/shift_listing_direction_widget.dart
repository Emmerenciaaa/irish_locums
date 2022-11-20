import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class ShiftListingDirectionWidget extends StatelessWidget {
  const ShiftListingDirectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Image.asset(
              AppAssets.map,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 114,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextBold(
                            'Dun Laoghaire Pharmacy',
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              color: AppColors.tertiaryTextColor,
                            ),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAssets.shareIcon,
                              ),
                              const Gap(22),
                              SvgPicture.asset(
                                AppAssets.bookmarkIcon,
                              )
                            ],
                          ),
                        ],
                      ),
                      const Gap(8),
                      TextBody(
                        'Dun Laoghaire ',
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: AppColors.grey,
                        ),
                      ),
                      const Gap(8),
                      TextBody(
                        'Co. Dublin, Ireland',
                        style: GoogleFonts.roboto(
                          fontSize: 10,
                          color: AppColors.grey,
                        ),
                      ),
                      const Gap(8),
                      Row(
                        children: [
                          TextBody(
                            '16 min ',
                            style: GoogleFonts.roboto(
                                fontSize: 12,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600),
                          ),
                          SvgPicture.asset(
                            AppAssets.carIcon,
                          ),
                          TextBody(
                            ' (1.3 km)',
                            style: GoogleFonts.roboto(
                              fontSize: 10,
                              color: AppColors.slate500,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
