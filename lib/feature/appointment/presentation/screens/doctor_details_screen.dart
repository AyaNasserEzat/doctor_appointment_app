import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/doctor_top_bar.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/doctot_information.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/price_and_book_now_button.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/select_date_text_form_field.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/store_appointment_bloc_listener.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/working_time_slots.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final Doctor doctor;

  const DoctorDetailsScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            spacing: 15,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DoctorTopBar(),
              SizedBox(height: 20),
              DoctorInformation(doctor: doctor),
              SelectDateTextFormField(),
              WorkingTimeSlots(
                startTime: '${doctor.startTime}',
                endTime: '${doctor.endTime}',
              ),
              SizedBox(height: 165),
              PricAndBookNowButton(doctor: doctor),
              StoreAppointmentBlocListener()
            ],
          ),
        ),
      ),
    );
  }
}
