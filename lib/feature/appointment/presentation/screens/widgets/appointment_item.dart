import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/apointment_date_and_time_colume.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/cancel_or_reschedule.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/doctor_appointment_info.dart';
import 'package:flutter/material.dart';

class AppointmentItem extends StatelessWidget {
  const AppointmentItem({super.key, required this.appointmentDataModel});
  final AppointmentData appointmentDataModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            spacing: 3,
            children: [
              DoctorApointmentInfo(appointmentDataModel: appointmentDataModel),
              Divider(thickness: 2, color: AppColors.extraLightGray),
              ApointmentDateAndTimColume(
                fullDateTime: appointmentDataModel.appointmentTime,
              ),
              SizedBox(height: 8),
              CancelOrReschedule(appointmentData: appointmentDataModel,),
            ],
          ),
        ),
      ),
    );
  }
}

