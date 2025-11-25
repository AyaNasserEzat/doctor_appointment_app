import 'dart:convert';

import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key, required this.payload});

  final String payload;

  @override
  Widget build(BuildContext context) {
    final data = jsonDecode(payload);
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffEAF2FF),
        ),
        child: Center(
          child: Image.asset(
            AppImages.apointmentsIcon,
            color: AppColors.blue,
            width: 28,
            height: 25,
          ),
        ),
      ),
      title: const Text(
        "Appointment Reminder",
        style: AppTextStyles.interBoldBlack18,
      ),
      subtitle: Text(
        "Don't miss appointment with Dr. ${data["docName"]} at ${data["apointmentDate"]}",
      style: AppTextStyles.interRegular14,),
    );
  }
}
