import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class EmptyBodey extends StatelessWidget {
  const EmptyBodey({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });
  final String image;
  final String title;
  final String subtitle;
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
              child: Image.asset(image, height: 120, color: AppColors.blue),
            ),
          ),
          Text(
            title,
            style: AppTextStyles.interBold24.copyWith(color: Colors.blue),
          ),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppTextStyles.interMedium16.copyWith(color: AppColors.blue),
          ),
        ],
      ),
    );
  }
}
