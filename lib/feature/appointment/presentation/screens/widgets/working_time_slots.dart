import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_cubit.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart' show DateFormat;

class WorkingTimeSlots extends StatelessWidget {
  final String startTime;
  final String endTime;

  const WorkingTimeSlots({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  List<String> _generateTimeSlots() {
    final DateFormat format = DateFormat("hh:mm:ss a");
    DateTime start = format.parse(startTime);
    DateTime end = format.parse(endTime);

    final List<String> slots = [];
    while (start.isBefore(end)) {
      slots.add(DateFormat("hh:mm a").format(start));
      start = start.add(const Duration(hours: 1));
    }
    return slots;
  }

  @override
  Widget build(BuildContext context) {
    final timeSlots = _generateTimeSlots();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Choose Time", style: AppTextStyles.interBoldBlack18),
          const SizedBox(height: 10),

          BlocBuilder<DoctorAapointmentCubit, DoctorAapointmentState>(
            buildWhen: (previous, current) => current is SelectTime,
            builder: (context, state) {
              final cubit = context.read<DoctorAapointmentCubit>();
              final selectedTime = cubit.selectedTime;

              return Wrap(
                spacing: 10,
                runSpacing: 10,
                children:
                    timeSlots.map((time) {
                      final bool isSelected = time == selectedTime;
                      return GestureDetector(
                        onTap: () => cubit.selecTime(time),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          decoration: BoxDecoration(
                            color:
                                isSelected
                                    ? Colors.blue.shade400
                                    : const Color(0xfff2f4f7),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            time,
                            style: TextStyle(
                              color:
                                  isSelected
                                      ? AppColors.white
                                      : AppColors.textMuted,
                            ),
                          ),
                        ),
                      );
                    }).toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
