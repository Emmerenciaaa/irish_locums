import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_asset.dart';

class IrishAppBar extends StatefulWidget implements PreferredSizeWidget {
  const IrishAppBar({Key? key}) : super(key: key);

  @override
  State<IrishAppBar> createState() => _IrishAppBarState();

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(100);
}

class _IrishAppBarState extends State<IrishAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  AppAssets.appbar,
                ),
                fit: BoxFit.fill)),
      ),
    );
  }
}
