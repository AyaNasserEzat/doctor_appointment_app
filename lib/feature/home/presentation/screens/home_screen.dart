import 'package:doctor_appointment/feature/home/presentation/screens/widgets/blue_container.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctors_list.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/home_top_bar.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/see_all_doctor_speciality_row.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0,right: 16,left: 16),
          child: Column(
            children: [
              HomeTopBar(),
              SizedBox(height: 16),
              BlueContainer(),
              SeeAllDoctorSpecialityRow(),
              SizedBox(height: 16),
              SpecializationCategories(),
              SizedBox(height: 16),
              DoctorsList()
            ],
          ),
        ),
      ),
    );
  }
}
