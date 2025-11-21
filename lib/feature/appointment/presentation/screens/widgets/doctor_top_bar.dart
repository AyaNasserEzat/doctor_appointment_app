import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorTopBar extends StatelessWidget {
  const DoctorTopBar({super.key, this.doctorImage=AppImages.docImageHome});
  final String doctorImage;
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
          top: 10,
          left: 10,
          child: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(Icons.arrow_back_ios, color: AppColors.white),
          ),
        ),
        Positioned(
          top: 20,
          child: Text(
            "Doctor Appointment",
            style: AppTextStyles.interBoldWhite20,
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
            child: Image.asset(doctorImage, height: 110),
          ),
        ),
      ],
    );
  }
}
