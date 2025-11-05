import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
class ApointmentDateAndTimColume extends StatelessWidget {
  const ApointmentDateAndTimColume({super.key, required this.fullDateTime});

  final String fullDateTime;

  @override
  Widget build(BuildContext context) {
    int splitIndex = fullDateTime.indexOf(RegExp(r'\d{4}')) + 4; // نهاية السنة
    String datePart = fullDateTime.substring(0, splitIndex).trim();
    String timePart = fullDateTime.substring(splitIndex).trim();
    return Column(
      spacing: 3,
      children: [
        Row(
          spacing: 5,
          children: [
            Icon(Icons.calendar_month, color: AppColors.textgrey, size: 15),
            Text(datePart, style: AppTextStyles.interMedium12),
          ],
        ),
        Row(
          spacing: 5,
          children: [
            Icon(Icons.access_time, color: AppColors.textgrey, size: 15),
            Text("at $timePart", style: AppTextStyles.interMedium12),
          ],
        ),
      ],
    );
  }
}
