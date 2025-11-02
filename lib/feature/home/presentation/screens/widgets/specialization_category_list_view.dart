import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_category_item.dart';
import 'package:flutter/material.dart';

class SpecializationCategoryListView extends StatelessWidget {
  const SpecializationCategoryListView({
    super.key,
    required this.specializationDataList,
  });
  final List<SpecializationData?> specializationDataList;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: specializationDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final specialization = specializationDataList[index];
          return SpecializationCategoryItem(specialization: specialization);
        },
      ),
    );
  }
}
