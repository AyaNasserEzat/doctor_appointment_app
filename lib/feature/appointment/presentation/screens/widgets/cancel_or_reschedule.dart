import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/success_appointment_dialog.dart';
import 'package:flutter/material.dart';

class CancelOrReschedule extends StatelessWidget {
  const CancelOrReschedule({super.key,required this.appointmentData});
final AppointmentData  appointmentData;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 10,
      children: [
        GestureDetector(
          onTap: () {
            successBookingAppointmentDialog(context,appointmentData);
          },
          child: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
              color: AppColors.extraLightGray,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Text(
                'cancel',
                style: AppTextStyles.interBoldBlack18.copyWith(
                  color: AppColors.red,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text('Reschedule', style: AppTextStyles.interBoldWhite20),
          ),
        ),
      ],
    );
  }
}