import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SpecializationCategoryItem extends StatelessWidget {
  const SpecializationCategoryItem({
    super.key,
    required this.specialization,
    required this.isSelectedIndex,
    required this.specialityImage,
  });

  final SpecializationData? specialization;
  final bool isSelectedIndex;
  final String specialityImage;

  @override
  Widget build(BuildContext context) {
    final bool isSkeleton = Skeletonizer.maybeOf(context)?.enabled ?? false;

    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.4,
                color:
                    isSkeleton
                        ? Color(0xffF4F8FF)
                        : isSelectedIndex
                        ? Colors.blue.shade300
                        : Color(0xffF4F8FF),
              ),

              color: Color(0xffF4F8FF),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Skeleton.replace(
                child: Image.asset(specialityImage, height: 40, width: 40),
              ),
            ),
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
