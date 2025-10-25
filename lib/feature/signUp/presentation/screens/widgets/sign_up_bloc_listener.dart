import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/signUp/presentation/logic/cubit/sign_up_state.dart';
import 'package:doctor_appointment/feature/signUp/presentation/logic/cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpBlocListener extends StatelessWidget {
  const SignUpBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen:
          (previous, current) =>
              current is SignupLoading ||
              current is SignupSucess ||
              current is SignupError,
      listener: (context, state) {
        state.whenOrNull(
          signupLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) => const Center(
                    child: CircularProgressIndicator(color: AppColors.blue),
                  ),
            );
          },
          signupSucess: (signupResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          signupError: (apiErrorModel) {
            showErrorDialog(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void showErrorDialog(BuildContext context, ApiErrorModel apiErroeModel) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(
              apiErroeModel.getAllErrorMessages(),
              style: AppTextStyles.interBold14,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it', style: AppTextStyles.interBold14),
              ),
            ],
          ),
    );
  }
}
