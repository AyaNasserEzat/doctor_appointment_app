import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/get_profile_bloc_builder.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/profile_option_item.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileTopBar(title: AppStrings.profile),
          SizedBox(height: 50),
          GetProfileBlocBuilder(),

          // Personal Info
          ProfileOptionItem(
            title: "personal information",
            image: AppImages.personalInfoIcon,
            imageColor: AppColors.blue,
            backgroundContainer: Color(0xffEAF2FF),
            onTap: () {},
          ),

          // Notifications
          ProfileOptionItem(
            title: "notifications",
            image: AppImages.notificationIcon,
            imageColor: AppColors.green,
            backgroundContainer: Color(0xffE9FAEF),
            onTap: () {
              context.pushNamed(Routes.notificationScreen);
            },
          ),

          // My appointment
          ProfileOptionItem(
            title: "my appointment",
            image: AppImages.apointmentsIcon,
            imageColor: AppColors.gray,
            backgroundContainer: AppColors.extraLightGray,
            onTap: () {},
          ),

          // Logout
          ProfileOptionItem(
            title: "logout",
            image: AppImages.logout,
            imageColor: AppColors.red,
            backgroundContainer: Color(0xffFFEEEF),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
