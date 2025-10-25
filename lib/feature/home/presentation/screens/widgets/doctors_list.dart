import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              spacing: 16,
              children: [
                Image.asset(AppImages.docImagTest),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Randy Wigham",
                        style: AppTextStyles.interBoldBlack18,
                      ),
                      Text(
                        "General | RSUD Gatot Subroto",
                        style: AppTextStyles.interMedium14,
                        maxLines: 1,
                      ),
                      Row(
                        spacing: 4,
                        children: [
                          Icon(Icons.star, color: AppColors.yellow),
                          Text("(4.8)", style: AppTextStyles.interMedium14),
                          Text(
                            "(4,279 reviews)",
                            style: AppTextStyles.interMedium14,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
