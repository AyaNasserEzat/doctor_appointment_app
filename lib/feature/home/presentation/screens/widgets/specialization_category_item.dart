import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';

class SpecializationCategoryItem extends StatelessWidget {
  const SpecializationCategoryItem({
    super.key,
    required this.specialization,
    required this.isSelectedIndex,
  });

  final SpecializationData? specialization;
  final bool isSelectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor:
                isSelectedIndex ? Colors.blue.shade300 : Color(0xffF4F8FF),
            child: Image.asset(AppImages.category, height: 60, width: 60),
          ),
          SizedBox(height: 10),
          Text(
            specialization!.name ?? "General",
            style:
                isSelectedIndex
                    ? AppTextStyles.interBold14
                    : AppTextStyles.interMedium14,
          ),
        ],
      ),
    );
  }
}
