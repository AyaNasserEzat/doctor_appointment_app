import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class SelectDateTextFormField extends StatefulWidget {
  const SelectDateTextFormField({super.key});

  @override
  State<SelectDateTextFormField> createState() =>
      _SelectDateTextFormFieldState();
}

class _SelectDateTextFormFieldState extends State<SelectDateTextFormField> {
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: now,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: ColorScheme.light(
              primary: AppColors.blue,
              onPrimary: Colors.white,
              onSurface: Colors.black,
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().substring(0, 10);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          Text("Select Date", style: AppTextStyles.interBoldBlack18),

          TextFormField(
            controller: _dateController,
            readOnly: true,
            decoration: InputDecoration(
              hintText: DateTime.now().toString().substring(0, 10),
              hintStyle: TextStyle(color: AppColors.textMuted),
              fillColor: Color(0xfff2f4f7),
              filled: true,
              suffixIcon: IconButton(
                onPressed: () => _selectDate(context),
                icon: Icon(
                  Icons.calendar_month_rounded,
                  color: AppColors.blue
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppColors.extraLightGray),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: const BorderSide(color: AppColors.extraLightGray),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide:  BorderSide(color: AppColors.blue,width: 1.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
