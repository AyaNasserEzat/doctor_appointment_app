import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class ProfileTopBar extends StatelessWidget {
  const ProfileTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 150,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ),
        Positioned(
          top: 30,
          left: 10,
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: AppColors.white),
          ),
        ),
        Positioned(
          top: 40,
          child: Text(AppStrings.profile,style: AppTextStyles.interBoldWhite20,)),

        Positioned(
          bottom: -40,
          child: CircleAvatar(
            radius: 40,
             backgroundColor: AppColors.graybackground,
            child: Icon(Icons.person, color: AppColors.gray),
          ),
        ),
      ],
    );
  }
}
