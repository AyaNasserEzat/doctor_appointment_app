import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/empty_bodey.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key, required this.payload});
  final String? payload;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.extraLightGray,
      body: Column(
        spacing: 5,
        children: [
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Notifications', style: AppTextStyles.interBoldBlack18),
            ],
          ),
          payload != null
              ? NotificationItem(payload: payload ?? "unun")
              : Expanded(
                child: const EmptyBodey(
                  image: AppImages.emptyNotificationImage,
                  title: AppStrings.titleEmptyNoyification,
                  subtitle: AppStrings.subTitleEmptyNoyification,
                ),
              ),
        ],
      ),
    );
  }
}
