import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/profile_top_bar.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/update_profile_form.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTopBar(title: AppStrings.updateProfile,),
            SizedBox(height: 50,),
            UpdateProfileForm(),
          
          ],
        ),
      ),
    );
  }
}