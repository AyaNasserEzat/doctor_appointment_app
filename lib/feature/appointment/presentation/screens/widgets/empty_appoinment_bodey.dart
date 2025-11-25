import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class EmptyAppoinmentBodey extends StatelessWidget {
  const EmptyAppoinmentBodey({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xffEAF2FF),
            ),
            child: Center(
              child: Image.asset(
                AppImages.emptyAppointmentImage,
                height: 120,
                color: AppColors.blue,
              ),
            ),
          ),
          Text(
            AppStrings.titleEmptyAppointment,
            style: AppTextStyles.interBold24,
          ),
          Text(
            AppStrings.subTitleEmptyAppointment,
            textAlign: TextAlign.center,
            style: AppTextStyles.interMedium16,
          ),
        ],
      ),
    );
  }
}
