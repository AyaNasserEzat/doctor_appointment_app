import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/routing/routes.dart';
import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctor_item.dart';
import 'package:flutter/material.dart';

class DoctorsListView extends StatelessWidget {
  const DoctorsListView({super.key, required this.doctorsList});
  final List<Doctor?>? doctorsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: doctorsList!.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final doctor = doctorsList![index];

        return GestureDetector(
          onTap: () {
            context.pushNamed(
              Routes.doctorDetailsScreen,
              arguments: {
                'doctor': doctorsList![index]!,
                'doctorImage': doctorsImages[index],
              },
            );
          },
          child: DoctorItem(
            doctorModel: doctor,
            doctorImage: doctorsImages[index],
          ),
        );
      },
    );
  }
}
