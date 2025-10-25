import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountWidget extends StatelessWidget {
  const DontHaveAnAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: AppStrings.aleardyHaveAnAccount,
          style: AppTextStyles.interRegular16,
          children: [
            TextSpan(
              text: ' ${AppStrings.signIn}',
              style: AppTextStyles.interBold18,
              recognizer:
                  TapGestureRecognizer()
                    ..onTap = () {
                      context.pushNamed(Routes.loginScreen);
                    },
            ),
          ],
        ),
      ),
    );
  }
}
