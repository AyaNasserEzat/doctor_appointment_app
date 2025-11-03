import 'package:doctor_appointment/feature/home/presentation/screens/widgets/blue_container.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctors_bloc_builder.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/home_top_bar.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/see_all_doctor_speciality_row.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_categories_bloc_builder.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0, right: 16, left: 16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeTopBar(),
                SizedBox(height: 16),
                BlueContainer(),
                SeeAllDoctorSpecialityRow(),
                SizedBox(height: 16),
                SpecializationCategoriesBlocBuilder(),
                SizedBox(height: 16),
                DoctorsBlocBuilder()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
