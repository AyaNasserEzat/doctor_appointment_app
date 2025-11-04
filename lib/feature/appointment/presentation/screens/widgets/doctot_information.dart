import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';

class DoctorInformation extends StatelessWidget {
  const DoctorInformation({
    super.key,
    required this.doctor,
  });

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(doctor.name!, style: AppTextStyles.interBoldBlack18),
          const SizedBox(height: 4),
          Text(
            '${doctor.degree} - ${doctor.specialization?.name!}',
            style: AppTextStyles.interRegular14Blue,
          ),
          Text('${doctor.phone}', style: AppTextStyles.interRegular14),
        ],
      ),
    );
  }
}
