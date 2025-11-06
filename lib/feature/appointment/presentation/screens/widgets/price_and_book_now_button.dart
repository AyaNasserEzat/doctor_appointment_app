import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PricAndBookNowButton extends StatelessWidget {
  const PricAndBookNowButton({super.key, required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Price: \$${doctor.appointPrice}',
            style: AppTextStyles.interBoldBlack18,
          ),
          Expanded(
            child: ElevatedButton(
              onPressed: () {
               
                BlocProvider.of<DoctorAapointmentCubit>(
                  context,
                ).storeAppointment(doctor.id!,context);
             
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade400,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
              child: const Text('Book Now'),
            ),
          ),
        ],
      ),
    );
  }
}
