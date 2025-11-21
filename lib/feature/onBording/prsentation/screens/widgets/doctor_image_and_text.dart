import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.appLogoLowOpcity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withValues(alpha: 0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: Image.asset(AppImages.onBordinDoctor,height: 450,),
        ),
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            textAlign: TextAlign.center,
            style: AppTextStyles.interBold32,
          
            
          ),
        ),
      ],
    );
  }
}