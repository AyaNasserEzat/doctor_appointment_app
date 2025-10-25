import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class SpecializationCategories extends StatelessWidget {
  const SpecializationCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return 
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Column(
              spacing: 10,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundColor: Color(0xffF4F8FF),
                  child: Image.asset(AppImages.category,height:60 ,width: 60,)),
                Text("General"),
              ],
            ),
          );
        },
      ),
    );
  }
}
