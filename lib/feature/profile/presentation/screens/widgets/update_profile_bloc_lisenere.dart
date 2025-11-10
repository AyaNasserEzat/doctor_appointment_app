import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileBlocLisenere extends StatelessWidget {
  const UpdateProfileBlocLisenere({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileCubit, ProfileState>(
      listenWhen:
          (previous, current) =>
              current is UpdateProfileLoading ||
              current is UpdateProfileError ||
              current is UpdateProfileSuccess,
      listener: (context, state) {
        state.whenOrNull(
          updateProfileLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) => Center(
                    child: CircularProgressIndicator(color: AppColors.blue),
                  ),
            );
          },
          updateProfileSucess: (updateProfileResponse) {
            context.pop();
            
          },
          updateProfileError: (apiErrorModel) {
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
