import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show DateFormat;

class WorkingTimeSlots extends StatefulWidget {
  final String startTime;
  final String endTime;

  const WorkingTimeSlots({
    super.key,
    required this.startTime,
    required this.endTime,
  });

  @override
  State<WorkingTimeSlots> createState() => _WorkingTimeSlotsState();
}

class _WorkingTimeSlotsState extends State<WorkingTimeSlots> {
  List<String> timeSlots = [];
  String? selectedTime;

  @override
  void initState() {
    super.initState();
    generateTimeSlots();
  }

  void generateTimeSlots() {
    final DateFormat format = DateFormat("hh:mm:ss a");
    DateTime start = format.parse(widget.startTime);
    DateTime end = format.parse(widget.endTime);

    while (start.isBefore(end)) {
      timeSlots.add(DateFormat("hh:mm a").format(start));
      start = start.add(const Duration(hours: 1));
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
     padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Choose Time", style: AppTextStyles.interBoldBlack18),
          const SizedBox(height: 10),
      
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children:
                timeSlots.map((time) {
                  final bool isSelected = time == selectedTime;
      
                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedTime = time);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color:
                            isSelected ? Colors.blue.shade400 : Color(0xfff2f4f7),
      
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        time,
                        style: TextStyle(
                          color:
                              isSelected ? AppColors.white : AppColors.textMuted,
                        ),
                      ),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}
