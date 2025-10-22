import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrSignInWithRow extends StatelessWidget {
  const OrSignInWithRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        Expanded(child: Divider(color: AppColors.divider)),
        Text(AppStrings.orSignWith,style: AppTextStyles.interMedium16,),
       Expanded(child: Divider(color: AppColors.divider)),
      ],
    );
  }
}
