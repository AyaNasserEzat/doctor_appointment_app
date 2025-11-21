import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_category_item.dart';
import 'package:flutter/material.dart';

class AllSpecializationCategoryBody extends StatelessWidget {
  const AllSpecializationCategoryBody({
    super.key,
    required this.specializationDataList,
  });

  final List<SpecializationData?> specializationDataList;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 12,
      runSpacing: 12,
      children: List.generate(specializationDataList.length, (index) {
        final specialization = specializationDataList[index];
        return SpecializationCategoryItem(
          specialityImage: specialityImages[index],
          specialization: specialization,
          isSelectedIndex: false,
        );
      }),
    );
  }
}
