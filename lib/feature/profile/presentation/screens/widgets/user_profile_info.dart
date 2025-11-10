import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/profile/data/models/profile_response.dart';
import 'package:flutter/material.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({super.key, required this.userData});

  final UserData userData;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Text(userData.name, style: AppTextStyles.interBoldBlack18),
        Text(userData.email, style: AppTextStyles.interMedium12, maxLines: 1),
        Text(userData.phone, style: AppTextStyles.interMedium14),
      ],
    );
  }
}
