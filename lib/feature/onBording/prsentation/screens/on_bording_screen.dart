import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/feature/onBording/prsentation/screens/widgets/doctor_image_and_text.dart';
import 'package:doctor_appointment/feature/onBording/prsentation/screens/widgets/logo_and_app_name.dart';
import 'package:flutter/material.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 30, bottom: 30),
            child: Column(
              children: [
                LogoAndAppName(),
                SizedBox(height: 32,),
                DoctorImageAndText(),
                Text(
                  AppStrings.onBordingTSubitle,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.interRegular12,
                ),
                SizedBox(height: 32,),
          
                Button(
                  text: AppStrings.getStarted,
                  onPressed: () {
                    context.pushNamed(Routes.loginScreen);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
