import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
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
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileTopBar(),
            SizedBox(height: 50),
            GetProfileBlocBuilder(),
            GestureDetector(
              onTap: () {
                context.pushNamed(Routes.updateProfileScreen).then((_){
                  context.read<ProfileCubit>().getProfile();
                });
              },
              child: Row(
                spacing: 10,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue.shade100,
                    ),
                    child: Icon(Icons.edit, color: AppColors.white),
                  ),
                  Text(
                    "edit personal information",
                    style: AppTextStyles.interBold16,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
