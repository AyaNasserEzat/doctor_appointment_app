import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_state.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/appointment_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
          getallAppointmentSuccess: (respob) {
            final dummyAppointment = AppointmentData(
              id: 0,
              doctor: Doctor(
                id: 0,
                name: "Loading...",
                email: "Loading...",
                phone: "Loading...",
                photo: "",
                gender: "Loading...",
                address: "Loading...",
                description: "Loading...",
                degree: "Loading...",
                specialization: Specialization(id: 0, name: "Loading..."),
                city: City(
                  id: 0,
                  name: "Loading...",
                  governrate: Governrate(id: 0, name: "Loading..."),
                ),
                appointPrice: 0,
                startTime: "Loading...",
                endTime: "Loading...",
              ),
              patient: Patient(
                id: 0,
                name: "Loading...",
                email: "Loading...",
                phone: "Loading...",
                gender: "Loading...",
              ),
              appointmentTime: "Loading...",
              appointmentEndTime: "Loading...",
              status: "Loading...",
              notes: "Loading...",
              appointmentPrice: 0,
            );

            return Skeletonizer(
              enabled: true,
              child: AppointmentListView(
                apointmentDataList: List.filled(5, dummyAppointment),
              ),
            );
          },
          getallAppointmentError:
              (apiErrorModel) => Text(apiErrorModel.message ?? "error"),
          // getallAppointmentSuccess: (getAllAppointmentsResponse) {
          //   return AppointmentListView(
          //     apointmentDataList: getAllAppointmentsResponse.data,
          //   );
          // },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
