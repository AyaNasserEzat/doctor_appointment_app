import 'package:doctor_appointment/core/services/notification_service.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, required this.payload});
  final String? payload;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(width: 100),
                  Text('Notifications', style: AppTextStyles.interBoldBlack18),
                ],
              ),
              ListTile(
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

                title: Text(
                  "Appointment Remider",
                  style: AppTextStyles.interBold16,
                ),
                subtitle: Text(
                  "don't miss appointment with Dr. Aya at ${payload ?? "null"} ",
                  style: AppTextStyles.interMedium12,
                ),
                trailing: IconButton(
                  onPressed: () {
                    NotificationService.showScheduleNotification(
                      date: 'Tuesday, November 25, 2025 7:23 PM',
                      docName: 'alaa',
                      minutesBefore: 1,
                    );
                  },
                  icon: Icon(Icons.alarm),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
