import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class PhoneTextFormField extends StatefulWidget {
  PhoneTextFormField({super.key, required this.hintText});
  List<String> c = ["KW", "eg"];
  String selectedCode = "KW";
  String? hintText;
  @override
  State<PhoneTextFormField> createState() => _PhoneTextFormField();
}

class _PhoneTextFormField extends State<PhoneTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.white,
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          PopupMenuButton<String>(
            icon: Icon(
              Icons.keyboard_arrow_down,
              size: 32,
              color: AppColors.gray,
            ),
            onSelected: (String newValue) {
              setState(() {
                widget.selectedCode = newValue;
              });
            },
            itemBuilder: (BuildContext context) {
              return widget.c.map((String code) {
                return PopupMenuItem<String>(value: code, child: Text(code,style: AppTextStyles.interMedium16,));
              }).toList();
            },
          ),
          Text(widget.selectedCode,style: AppTextStyles.interMedium16,),
          SizedBox(width: 10),
          Container(width: .3, height: 40, color: AppColors.gray),

          const SizedBox(width: 8),

          Expanded(
            child: TextField(
              controller: TextEditingController(),
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
                hintStyle: AppTextStyles.interMedium16
              ),
            ),
          ),
        ],
      ),
    );
  }
}
