import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeTermsAndCondtionWidget extends StatelessWidget {
  const AgreeTermsAndCondtionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: AppStrings.agreeTerms,
          style: AppTextStyles.interMedium14,
          children: [
            TextSpan(
              text: ' ${AppStrings.termsAndCondition}',
              style: AppTextStyles.interBold14,
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: ' ${AppStrings.and}',
              style: AppTextStyles.interMedium14.copyWith(height: 1.5),
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
            TextSpan(
              text: ' ${AppStrings.privacyPolicy}',
              style: AppTextStyles.interBold14,
              recognizer: TapGestureRecognizer()..onTap = () {},
            ),
          ],
        ),
      ),
    );
  }
}
