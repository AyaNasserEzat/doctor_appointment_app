import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/login/prsentation/screens/widgets/agree_terms_and_condition.dart';
import 'package:doctor_appointment/feature/login/prsentation/screens/widgets/aleardy_have_an_account_widget.dart';
import 'package:doctor_appointment/feature/signUp/presentation/screens/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 50, bottom: 24, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Text(
                  AppStrings.createAccount,
                  style: AppTextStyles.interBold32,
                ),
                SizedBox(height: 5),
                Text(
                  AppStrings.sinUpSubTitle,
                  style: AppTextStyles.interRegular14,
                ),
                SizedBox(height: 16),
                SignUpForm(),
                // SizedBox(height: 16),
                // OrSignInWithRow(),
                // SizedBox(height: 16),
                // SignInWithGoogleWidget(),
                SizedBox(height: 16),
                AgreeTermsAndCondtionWidget(),
                SizedBox(height: 30),
                AleardyHaveAnAccountWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
