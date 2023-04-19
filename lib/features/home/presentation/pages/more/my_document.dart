import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';

class MyDocumentScreen extends StatefulWidget {
  const MyDocumentScreen({super.key});

  @override
  State<MyDocumentScreen> createState() => _MyDocumentScreenState();
}

class _MyDocumentScreenState extends State<MyDocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Stack(
        children: [
          const AppBarContainer(
            title: 'My Documnet',
            subtitle: '',
            showBackIcon: true,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 164,
              left: 17,
              right: 17,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  MyDocumentItem(
                    title: 'Curriculum Vitae',
                    mb: '1.2 MB',
                  ),
                  MyDocumentItem(
                    title: 'Resume',
                    mb: '4 MB',
                  ),
                  MyDocumentItem(
                    title: 'Profile Summary',
                    mb: '2 MB',
                  ),
                  MyDocumentItem(
                    title: 'Garda Vetting Certificate',
                    mb: '245 KB',
                  ),
                  MyDocumentItem(
                    title: 'HSE Certificate',
                    mb: '245 KB',
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

class MyDocumentItem extends StatefulWidget {
  const MyDocumentItem({
    super.key,
    required this.title,
    required this.mb,
  });
  final String title;
  final String mb;

  @override
  State<MyDocumentItem> createState() => _MyDocumentItemState();
}

bool showAction = false;

class _MyDocumentItemState extends State<MyDocumentItem> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Container(
            height: 80,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        AppAssets.docImg,
                      ),
                      const Gap(17),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextBold(
                            widget.title,
                            fontSize: 14,
                            color: AppColors.tertiaryTextColor,
                          ),
                          const Gap(4),
                          TextBody(
                            widget.mb,
                            color:
                                AppColors.tertiaryTextColor.withOpacity(0.39),
                            fontSize: 10,
                          )
                        ],
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        showAction = !showAction;
                      });
                    },
                    child: Row(
                      children: [
                        TextBody(
                          'Actions',
                          color: AppColors.grey,
                          fontSize: 12,
                        ),
                        const Gap(11),
                        Icon(
                          showAction
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                          size: 20,
                          color: AppColors.borderColor,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        showAction
            ? Padding(
                padding: const EdgeInsets.only(
                  top: 54,
                ),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 94,
                    width: 105,
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.viewIconn,
                              ),
                              const Gap(13),
                              TextBody(
                                'View',
                                fontSize: 10,
                                color: AppColors.black,
                              )
                            ],
                          ),
                        ),
                        const Gap(15),
                        InkWell(
                          onTap: () {
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.editIcon,
                                color: AppColors.darkGrey,
                              ),
                              const Gap(13),
                              TextBody(
                                'Edit',
                                fontSize: 10,
                                color: AppColors.black,
                              )
                            ],
                          ),
                        ),
                        const Gap(15),
                        InkWell(
                          onTap: () {
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppAssets.deleteIconn,
                              ),
                              const Gap(13),
                              TextBody(
                                'Delete',
                                fontSize: 10,
                                color: AppColors.black,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
