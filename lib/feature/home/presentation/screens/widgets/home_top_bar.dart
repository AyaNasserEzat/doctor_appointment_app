import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi Aya", style: AppTextStyles.interBold24),
            Text(AppStrings.howAreYou, style: AppTextStyles.interRegular14),
          ],
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: AppColors.extraLightGray,
          child: Icon(Icons.notifications_none,color: AppColors.black,),
        )
      ],
    );
  }
}
