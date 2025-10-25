import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SeeAllDoctorSpecialityRow extends StatelessWidget {
  const SeeAllDoctorSpecialityRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          AppStrings.doctorSpeciality,
          style: AppTextStyles.interBoldBlack18,
        ),
        Spacer(),
        Text(
          AppStrings.seeAll,
          style: AppTextStyles.interRegular14.copyWith(color: AppColors.blue),
        ),
      ],
    );
  }
}
