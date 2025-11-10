import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.isObscureText,
    this.suffixIcon,
    this.validator,
  });
  final String hintText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool? isObscureText;
  final Function(String?)? validator;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isObscureText == true ? _isHidden : false,
      validator: (value) {
  return widget.validator?.call(value);
},

      decoration: InputDecoration(
        suffixIcon:
            widget.isObscureText == true
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      _isHidden = !_isHidden;
                    });
                  },
                  icon:
                      _isHidden == true
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                  color: AppColors.blue,
                )
                : widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: AppTextStyles.interMedium14,
        filled: true,
        fillColor: AppColors.textfieldfillColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.border, width: 1.3),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.blue, width: 1.3),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.red, width: 1.3),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.red, width: 1.3),
        ),
      ),
    );
  }
}
