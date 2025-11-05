import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:flutter/material.dart';

class DoctorApointmentInfo extends StatelessWidget {
  const DoctorApointmentInfo({
    super.key,
    required this.appointmentDataModel,
  });

  final AppointmentData appointmentDataModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(AppImages.docImagTest),
          radius: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                appointmentDataModel.doctor.name,
                style: AppTextStyles.interBoldBlack18,
              ),
              Text(
                appointmentDataModel.doctor.specialization.name,
                style: AppTextStyles.interMedium12,
                maxLines: 1,
              ),
            ],
          ),
        ),
        Text(
          appointmentDataModel.status,
          style: AppTextStyles.interMedium14,
        ),
      ],
    );
  }
}
