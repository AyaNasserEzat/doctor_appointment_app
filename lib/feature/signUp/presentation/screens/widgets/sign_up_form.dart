import 'package:doctor_appointment/core/helper/app_regex.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/core/widgets/custom_text_form_field.dart';
import 'package:doctor_appointment/feature/signUp/presentation/logic/cubit/signup_cubit.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SignupCubit>();
    return Form(
      key: cubit.signupFormKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: cubit.nameController,
            hintText: AppStrings.name,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid name';
              }
            },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            controller: cubit.emailController,
            hintText: AppStrings.email,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            hintText: AppStrings.yourNumber,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone';
              }
            },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            controller: cubit.passwordController,
            hintText: AppStrings.password,
            isObscureText: true,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPasswordValid(value)) {
                return 'Please enter a valid password';
              }
            },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            controller: cubit.passwordConfirmationController,
            hintText: AppStrings.password,
            isObscureText: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password confirmation';
              }
              if (value != cubit.passwordConfirmationController!.text) {
                return 'passwrd dosn\'t match password';
              }
            },
          ),

          SizedBox(height: 20),
          Button(
            text: AppStrings.createAccount,
            onPressed: () {
              if (cubit.signupFormKey.currentState!.validate()) {
                cubit.emitSignupState();
              }
            },
          ),
        ],
      ),
    );
  }
}
