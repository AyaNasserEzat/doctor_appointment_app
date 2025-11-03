import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_category_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationCategoryListView extends StatefulWidget {
  const SpecializationCategoryListView({
    super.key,
    required this.specializationDataList,
  });
  final List<SpecializationData?> specializationDataList;

  @override
  State<SpecializationCategoryListView> createState() =>
      _SpecializationCategoryListViewState();
}

class _SpecializationCategoryListViewState
    extends State<SpecializationCategoryListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: widget.specializationDataList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final specialization = widget.specializationDataList[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
              BlocProvider.of<HomeCubit>(
                context,
              ).getDoctorsBySpeceializationId(specialization!.id!);
            },
            child: SpecializationCategoryItem(
              specialization: specialization,
              isSelectedIndex: selectedIndex == index,
            ),
          );
        },
      ),
    );
  }
}
