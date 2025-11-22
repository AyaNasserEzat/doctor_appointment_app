import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctors_list_view.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';

class SpecializationCategoryListViewSkeletonzir extends StatelessWidget {
  const SpecializationCategoryListViewSkeletonzir({super.key});

  @override
  Widget build(BuildContext context) {
    final fakeList = List.generate(
      6,
      (index) => SpecializationData(name: "Loading..."),
    );

    return Column(
      children: [
        Skeletonizer(
          enabled: true,
          child: SpecializationCategoryListView(
            specializationDataList: fakeList,
          ),
        ),
        SizedBox(height: 10),
        Skeletonizer(
          enabled: true,
          child: DoctorsListView(doctorsList: List.filled(5, null))
        ),
      ],
    );
  }
}
