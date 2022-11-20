import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';

class HomeNavWidget extends StatefulWidget {
  const HomeNavWidget({
    super.key,
    required this.isSlected,
    required this.tile,
    required this.onTap,
  });
  final String tile;
  final bool isSlected;
  final VoidCallback onTap;

  @override
  State<HomeNavWidget> createState() => _HomeNavWidgetState();
}

class _HomeNavWidgetState extends State<HomeNavWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
          width: 4,
          color: widget.isSlected ? AppColors.white : Colors.transparent,
        ))),
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 7,
          ),
          child: TextSemiBold(
            widget.tile,
            fontSize: 11,
            color: widget.isSlected
                ? AppColors.white
                : AppColors.white.withOpacity(
                    0.89,
                  ),
          ),
        ),
      ),
    );
  }
}
