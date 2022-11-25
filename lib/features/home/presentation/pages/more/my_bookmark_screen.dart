import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_asset.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/features/availability/presentation/widgets/app_bar_container.dart';
import 'package:irish_locums/features/home/presentation/pages/more/my_application_screen.dart';

class MyBookmarkScreen extends StatefulWidget {
  const MyBookmarkScreen({super.key});

  @override
  State<MyBookmarkScreen> createState() => _MyBookmarkScreenState();
}

class _MyBookmarkScreenState extends State<MyBookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: Stack(children: [
        const AppBarContainer(
          title: 'My Bookmarks',
          subtitle: '',
          showBackIcon: true,
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 164,
            left: 17,
            right: 17,
          ),
          child: Column(
              children: List.generate(4, (index) {
            return MyApplicationItem(
              imgHeighht: 48,
              imgWidth: 36,
              title: 'Springfield Pharmacy',
              status: '',
              image: AppAssets.bookmarkImg,
              onTapView: () {},
              onTapDelete: () {},
              showStatus: false,
            );
          })),
        )
      ]),
    );
  }
}

class MyDocumentItem extends StatefulWidget {
  const MyDocumentItem({super.key});

  @override
  State<MyDocumentItem> createState() => _MyDocumentItemState();
}

class _MyDocumentItemState extends State<MyDocumentItem> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
