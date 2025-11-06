import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:flutter/material.dart';

Future<dynamic> successBookingAppointmentDialog(BuildContext context,AppointmentData appointmentData) {
  return showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.all(16),
        child: Container(
          height: 330,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              spacing: 5,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColors.green,
                  child: Icon(Icons.check, size: 40, color: AppColors.white),
                ),
                SizedBox(height: 5),
                Text(
                  textAlign: TextAlign.center,
                  "Appointment Booked Successfully",
                  style: AppTextStyles.interBoldBlack18,
                ),
                Text(
                  textAlign: TextAlign.center,
                  "Appointment Booked with ${appointmentData.doctor.name} in novmber ${appointmentData.appointmentTime}",
                  style: AppTextStyles.interMedium16,
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Button(
                    onPressed: () {
                      context.pop();
                      context.pushNamed(Routes.allMyAppointmentScreen);
                    },
                    text: "View Appointments",
                    backgroundColor: AppColors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
