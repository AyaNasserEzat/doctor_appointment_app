import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';

import 'package:doctor_appointment/feature/appointment/presentation/screens/all_my_appointment_screen.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/home_screen.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarView extends StatefulWidget {
  const BottomNavBarView({super.key});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  final List<IconData?> icons = [Icons.home, Icons.person, Icons.dock];

  final List<String> lables = ['home', 'appoins', 'profile'];

  final List<Widget> views = [
    BlocProvider(
      create: (context) => getIt<HomeCubit>()..getspecializationsState(),
      child: const HomeScreen(),
    ),
    BlocProvider(create: (context) => ProfileCubit(getIt())..getProfile(), child: ProfileScreen()),
    BlocProvider(
      create:
          (context) => DoctorAapointmentCubit(getIt())..getAllMyAppointments(),
      child: AllMyAppointmentScreen(),
    ),
  ];

  int currentIndx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[currentIndx],
      extendBody: true,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 60,

          decoration: BoxDecoration(
            // gradient: LinearGradient(colors: [AppColors.blue,Colors.blueAccent]),
            color: AppColors.blue,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(icons.length, (index) {
              return GestureDetector(
                onTap: () {
                  changeCurrentIndx(index);
                },
                child:
                    currentIndx == index
                        ? Padding(
                          padding: const EdgeInsets.all(3),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              children: [
                                Icon(icons[index], color: AppColors.blue),

                                Text(
                                  lables[index],
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        )
                        : Column(
                          children: [
                            Icon(icons[index], color: AppColors.white),
                            // SizedBox(height: 6),
                            Text(
                              lables[index],
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
              );
            }),
          ),
        ),
      ),
    );
  }

  void changeCurrentIndx(int index) {
    return setState(() {
      currentIndx = index;
    });
  }
}
