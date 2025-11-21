import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
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
  final List<String> icons = [
    AppImages.homeIcon,
    AppImages.apointmentsIcon,
    AppImages.profile,
  ];

  final List<String> lables = ['home',  'appointments','profile',];

  final List<Widget> views = [
    BlocProvider(
      create: (context) => getIt<HomeCubit>()..getspecializationsState(),
      child: const HomeScreen(),
    ),
     AllMyAppointmentScreen(),
    BlocProvider(
      create: (context) => ProfileCubit(getIt())..getProfile(),
      child: ProfileScreen(),
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
            color: AppColors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.15),
                blurRadius: 20,
                offset: Offset(0, 8), // ظل لتحت
              ),
            ],
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
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Image.asset(
                                icons[index],
                                width: 20,
                                color: AppColors.blue,
                              ),

                              Text(
                                lables[index],
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        )
                        : Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Column(
                            children: [
                              Image.asset(
                                icons[index],
                                width: 20,
                                color: AppColors.gray,
                              ),
                              Text(
                                lables[index],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
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
