import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, required this.doctorModel});
  final Doctor doctorModel;
  @override
  Widget build(BuildContext context) {
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
                  doctorModel.name ?? "Name",
                  style: AppTextStyles.interBoldBlack18,
                ),
                Text(
                  doctorModel.address ?? "address",
                  style: AppTextStyles.interMedium14,
                  maxLines: 1,
                ),
                Row(
                  spacing: 4,
                  children: [
                    Text(
                      doctorModel.appointPrice.toString(),
                      style: AppTextStyles.interBold16,
                    ),
                    Text(r"$", style: AppTextStyles.interBold16),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
