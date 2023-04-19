import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:irish_locums/core/constants/app_color.dart';
import 'package:irish_locums/core/constants/fonts.dart';
import 'package:irish_locums/core/constants/ui_helpers.dart';

class UploadWidget extends StatelessWidget {
  const UploadWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: AppColors.lightBlue,
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: Container(
          width: double.infinity,
          color: AppColors.backgroundLightBlue,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13,vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextBody(
                    'Upload your file',
                  color: AppColors.lightBlue,
                  fontSize: 13,
                ),
                TextBody(
                    'Max 5mb, PDF, JPG, DOC',
                  color: AppColors.black,
                  fontSize: 8,
                ),
                gapSmall,
                gapTiny,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: AppColors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 27,vertical: 8.5),
                      child: Center(
                        child: TextBody(
                            'Choose a file',
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                gapSmall,
                gapTiny,
                TextBody(
                  'No file upoaded',
                  color: AppColors.black,
                  fontSize: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
