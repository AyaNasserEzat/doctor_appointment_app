import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/get_profile_bloc_builder.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/profile_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ProfileTopBar(),
          SizedBox(height: 50),
          GetProfileBlocBuilder(),
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.updateProfileScreen).then((_) {
                context.read<ProfileCubit>().getProfile();
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffEAF2FF),
                    ),
                    child: Center(child: Image.asset(AppImages.personalInfoIcon,color: AppColors.blue,width: 28,height: 25,)),
                  ),
                  Text(
                    "personal information",
                    style: AppTextStyles.interBold16,
                  ),
                ],
              ),
            ),
          ),
        
          GestureDetector(
            onTap: () {
              context.pushNamed(Routes.notificationScreen);
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffE9FAEF),
                    ),
                    child: Center(child: Image.asset(AppImages.notificationIcon,color: AppColors.green,width: 28,height: 25,))
                  ),
                  Text("notifications", style: AppTextStyles.interBold16),
                ],
              ),
            ),
            
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.extraLightGray,
                    ),
                    child: Center(child: Image.asset(AppImages.apointmentsIcon,color: AppColors.gray,width: 28,height: 25,)),
                  ),
                  Text(
                    "my appointment",
                    style: AppTextStyles.interBold16,
                  ),
                ],
              ),),
              Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color(0xffFFEEEF),
                    ),
                    child: Center(child: Image.asset(AppImages.logout,color: AppColors.red,width: 28,height: 25,)),
                  ),
                  Text(
                    "logout",
                    style: AppTextStyles.interBold16,
                  ),
                ],
              ),)
        ],
      ),
    );
  }
}
