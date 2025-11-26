
  import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

void showErrorDialog(BuildContext context, ApiErrorModel apiErroeModel) {
    context.pop();
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            icon: const Icon(Icons.error, color: Colors.red, size: 32),
            content: Text(
              apiErroeModel.getAllErrorMessages(),
              style: AppTextStyles.interBold14,
            ),
            actions: [
              TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text('Got it', style: AppTextStyles.interBold14),
              ),
            ],
          ),
    );
  }
