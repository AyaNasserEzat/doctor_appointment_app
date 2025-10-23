import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/core/widgets/custom_text_form_field.dart';
import 'package:doctor_appointment/feature/login/prsentation/logic/cubit/login_cubit.dart';
import 'package:doctor_appointment/feature/login/prsentation/screens/widgets/login_bloc_listner.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return Column(
      children: [
        CustomTextFormField(
          controller: cubit.emailController,
          hintText: AppStrings.email,
          validator: (p0) => null,
        ),
        SizedBox(height: 16),
        CustomTextFormField(
          controller: cubit.passwordController,
          hintText: AppStrings.password,
          isObscureText: true,
          validator: (p0) => null,
        ),
        SizedBox(height: 32),
        Button(
          text: AppStrings.login,
          onPressed: () {
            cubit.emitLoginState();
          },
        ),
        LoginBlocListener(),
      ],
    );
  }
}
