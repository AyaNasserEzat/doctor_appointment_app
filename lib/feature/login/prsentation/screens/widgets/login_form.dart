import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/core/widgets/custom_text_form_field.dart';
import 'package:flutter/widgets.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextFormField(hintText: AppStrings.email),
        SizedBox(height: 16),
        CustomTextFormField(hintText: AppStrings.password),
        SizedBox(height: 32),
        Button(
          text: AppStrings.login,
          onPressed: () {
            context.pushNamed(Routes.loginScreen);
          },
        ),
      ],
    );
  }
}
