import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_state.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/appointment_list_view.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/appointment_listview_skeletonizer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllMyAppointmentBlocBuilder extends StatelessWidget {
  const AllMyAppointmentBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DoctorAapointmentCubit, DoctorAapointmentState>(
      buildWhen:
          (previous, current) =>
              current is GetallAppointmentLoading ||
              current is GetallAppointmentSuccess ||
              current is GetallAppointmentError,
      builder: (context, state) {
        return state.maybeWhen(
          getallAppointmentLoading: () {
            return AppointmentListViewSkeletonizer();
          },
          getallAppointmentError:
              (apiErrorModel) => Text(apiErrorModel.message ?? "error"),
          getallAppointmentSuccess: (getAllAppointmentsResponse) {
            return AppointmentListView(
              apointmentDataList: getAllAppointmentsResponse.data,
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
