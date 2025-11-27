import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/services/notification_service.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/widgets/error_dialog.dart';
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
                  (context) => Center(
                    child: CircularProgressIndicator(color: AppColors.blue),
                  ),
            );
          },
          storeAppointmentSucess: (storeAppointmentResponse) {
            context.pop();
            successBookingAppointmentDialog(
              context,
              storeAppointmentResponse.data,
            );
            NotificationService.showScheduleNotification(
              date: storeAppointmentResponse.data.appointmentTime,
         docName: storeAppointmentResponse.data.doctor.name,
              minutesBefore: 120,
            );
          },
          storeAppointmentError: (apiErrorModel) {
            showErrorDialog(context, apiErrorModel);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}