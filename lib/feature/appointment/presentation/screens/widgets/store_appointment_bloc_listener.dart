import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_state.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/success_appointment_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreAppointmentBlocListener extends StatelessWidget {
  const StoreAppointmentBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<DoctorAapointmentCubit, DoctorAapointmentState>(
      listenWhen:
          (previous, current) =>
              current is StoreAppointmentLoading ||
              current is StoreAppointmentSucess ||
              current is StoreAppointmentError,
      listener: (context, state) {
        state.whenOrNull(
          storeAppointmentLoading: () {
            showDialog(
              context: context,
              builder:
                  (context) =>  Center(
                    child: CircularProgressIndicator(color: AppColors.blue),
                  ),
            );
          },
          storeAppointmentSucess: (storeAppointmentResponse) {
            context.pop();
            successBookingAppointmentDialog(context,storeAppointmentResponse.data);
          },
          storeAppointmentError: (apiErrorModel) {
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
