import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    super.key,
    this.width,
  });
  final String text;
  final VoidCallback onPressed;
  final double? width;
  final Color? backgroundColor;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor?? AppColors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Text(text, style: AppTextStyles.interBoldWhite20),
      ),
    );
  }
}
