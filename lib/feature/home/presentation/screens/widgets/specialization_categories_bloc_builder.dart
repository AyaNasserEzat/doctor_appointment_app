import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_state.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctors_list_view.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/specialization_category_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationCategoriesBlocBuilder extends StatelessWidget {
  const SpecializationCategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is SpecializationsLoading ||
              current is SpecializationsError ||
              current is SpecializationsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => CircularProgressIndicator(),
          specializationsError:
              (apiErrorModel) => Text(apiErrorModel.message ?? "error"),
          specializationsSuccess: (specializationDataList) {
            return Column(
              spacing: 20,
              children: [
                SpecializationCategoryListView(
                  specializationDataList: specializationDataList ?? [],
                ),

                DoctorsListView(
                  doctorsList: specializationDataList?.first?.doctors ?? [],
                ),
              ],
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
