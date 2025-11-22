import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/appointment_list_view.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class AppointmentListViewSkeletonizer extends StatelessWidget {
  const AppointmentListViewSkeletonizer({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
