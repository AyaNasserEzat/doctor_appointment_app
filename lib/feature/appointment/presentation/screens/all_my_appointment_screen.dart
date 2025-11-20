import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/screens/widgets/all_my_appointment_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllMyAppointmentScreen extends StatelessWidget {
  const AllMyAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => DoctorAapointmentCubit(getIt())..getAllMyAppointments(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.extraLightGray,

          //appBar: AppBar(title: Text('Appointment'),centerTitle: true,),
          body: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              children: [
                Text('Appointmets', style: AppTextStyles.interBoldBlack18),
                AllMyAppointmentBlocBuilder(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
