import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class LogoAndAppName extends StatelessWidget {
  const LogoAndAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: [
        SvgPicture.asset(AppImages.appLogo,color: AppColors.blue,),
        Text(AppStrings.appName, style: AppTextStyles.interBold24),
      ],
    );
  }
}
