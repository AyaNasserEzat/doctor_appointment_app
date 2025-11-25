import 'dart:convert';

import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/services/notification_service.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/empty_bodey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// class NotificationScreen extends StatelessWidget {
//   const NotificationScreen({super.key, required this.payload});
//   final String? payload;
//   @override
//   Widget build(BuildContext context) {
//     final Map<String, dynamic> data = payload != null
//     ? jsonDecode(payload!)
//     : {};
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: Column(
//             children: [
//               Row(
//                 children: [
//                   Icon(Icons.arrow_back_ios),
//                   SizedBox(width: 100),
//                   Text('Notifications', style: AppTextStyles.interBoldBlack18),
//                 ],
//               ),
//               ListTile(
//                 leading: Container(
//                   width: 40,
//                   height: 40,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: Color(0xffEAF2FF),
//                   ),
//                   child: Center(
//                     child: Image.asset(
//                       AppImages.apointmentsIcon,
//                       color: AppColors.blue,
//                       width: 28,
//                       height: 25,
//                     ),
//                   ),
//                 ),

//                 title: Text(
//                   "Appointment Remider",
//                   style: AppTextStyles.interBold16,
//                 ),
//                 subtitle: Text(
//                   "don't miss appointment with Dr. ${data["docName"]} at ${data["apointmentDate"] ?? "null"} ",
//                   style: AppTextStyles.interMedium12,
//                 ),
//                 trailing: IconButton(
//                   onPressed: () {
//                     NotificationService.showScheduleNotification(
//                       date: 'Tuesday, November 25, 2025 7:43 PM',
//                       docName: 'alaa',
//                       minutesBefore: 1,
//                     );
//                   },
//                   icon: Icon(Icons.alarm),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorAapointmentCubit(getIt()),
      child: Builder(
        builder: (context) {
          final notifications =
              BlocProvider.of<DoctorAapointmentCubit>(context).notifications;

          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Icon(Icons.arrow_back_ios),
                      SizedBox(width: 100),
                      Text('Notification', style: AppTextStyles.interBoldBlack18),
                    ],
                  ),
                  Expanded(
                    child: notifications.isEmpty
                        ? const EmptyBodey(
                            image: AppImages.emptyNotificationImage,
                            title: AppStrings.titleEmptyNoyification,
                            subtitle: AppStrings.subTitleEmptyNoyification,
                          )
                        : ListView.builder(
                            itemCount: notifications.length,
                            itemBuilder: (context, index) {
                              final item = notifications[index];
                              return ListTile(
                                leading: Icon(Icons.notifications),
                                title: Text("Appointment Reminder"),
                                subtitle: Text(
                                  "Don't miss appointment with Dr. ${item.docName} at ${item.appointmentDate}",
                                ),
                              );
                            },
                          ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
