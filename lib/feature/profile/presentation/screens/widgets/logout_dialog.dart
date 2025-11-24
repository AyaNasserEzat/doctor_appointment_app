import 'package:doctor_appointment/core/helper/constant.dart';
import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/helper/shared_pref_helper.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

Future<dynamic> showLogoutDialog(BuildContext context) async {
  return await showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.all(16),
        child: Container(
          height: 240,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              spacing: 10,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Confirm Logout', style: AppTextStyles.interBold24.copyWith(color: AppColors.blue)),
               
               Divider(thickness: 1.3,color: AppColors.extraLightGray,),
                Text(
                  'Are you shoure you want Log Out?',
                  style: AppTextStyles.interMedium12.copyWith(
                    color: AppColors.blue,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 10,
                  children: [
                    TextButton(
                      onPressed: () async {
                        context.pushReplacementNamed(Routes.loginScreen);
                        SharedPrefHelper.removeSecuredData(
                          SharedPrefKeys.userToken,
                        );
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.blue,
                        ),
                        fixedSize: WidgetStateProperty.all(Size(100, 30)),
                      ),
                      child: Text('Ok', style: AppTextStyles.interBoldWhite20),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ButtonStyle(
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: BorderSide(color: AppColors.border,width: 1.3),
                          ),
                        ),
                        backgroundColor: WidgetStateProperty.all(
                          AppColors.white,
                        ),
                        fixedSize: WidgetStateProperty.all(Size(100, 30)),
                      ),
                      child: Text('Cancel ', style: AppTextStyles.interBold14),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
