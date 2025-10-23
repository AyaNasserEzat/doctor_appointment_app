import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/core/widgets/custom_text_form_field.dart';
import 'package:doctor_appointment/feature/signUp/presentation/screens/widgets/phone_text_form_field.dart';
import 'package:flutter/widgets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(
          hintText: AppStrings.email,
          validator: (p0) => null,
        ),
        SizedBox(height: 16),
        CustomTextFormField(
          hintText: AppStrings.password,
          isObscureText: true,
          validator: (p0) => null,
        ),
        SizedBox(height: 16),
        PhoneTextFormField(hintText: AppStrings.yourNumber),
        SizedBox(height: 20),
        Button(
          text: AppStrings.createAccount,
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}
