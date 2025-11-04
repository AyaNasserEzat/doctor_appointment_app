
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class DoctorTopBar extends StatelessWidget {
  const DoctorTopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentGeometry.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 100,
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
          top: 10,
          left: 10,
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios, color: AppColors.white),
          ),
        ),
    
        Positioned(
          bottom: -40,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: AppColors.graybackground,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(AppImages.docImageHome, height: 110),
          ),
        ),
      ],
    );
  }
}

