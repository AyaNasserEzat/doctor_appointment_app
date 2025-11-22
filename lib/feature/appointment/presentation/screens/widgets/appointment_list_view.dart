
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/appointment_item.dart';
import 'package:flutter/material.dart';
class AppointmentListView extends StatelessWidget {
  const AppointmentListView({super.key, required this.apointmentDataList});
  final List<AppointmentData> apointmentDataList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: apointmentDataList.length,
      itemBuilder: (context, index) {
        return AppointmentItem(
          appointmentDataModel: apointmentDataList[index],
        );
      },
    );
  }
}
