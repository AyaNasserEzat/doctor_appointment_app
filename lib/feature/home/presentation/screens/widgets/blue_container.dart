import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class BlueContainer extends StatelessWidget {
  const BlueContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 190,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            height: 180,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: AppColors.blue
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                SizedBox(
                  width: 150,
                  child: Text(
                    AppStrings.blueContainerText,

                    style: AppTextStyles.interMedium18.copyWith(
                      color: AppColors.white,
                      height: 1.6,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(backgroundColor: AppColors.white),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Text(
                      AppStrings.findNearBy,
                      style: AppTextStyles.interRegular12.copyWith(
                        color: AppColors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -20,
            right: 3,
            child: Image.asset(AppImages.docImageHome, height: 200),
          ),
        ],
      ),
    );
  }
}
