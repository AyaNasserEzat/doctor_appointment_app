import 'package:doctor_appointment/core/helper/extension.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_state.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/all_specillition_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllSpecilityScreen extends StatelessWidget {
  const AllSpecilityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            spacing: 15,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(Icons.arrow_back_ios, color: AppColors.black),
                  ),
                  SizedBox(width: 50),
                  Text(
                    AppStrings.doctorSpeciality,
                    style: AppTextStyles.interBoldBlack18,
                  ),
                ],
              ),
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen:
                    (previous, current) =>
                        current is SpecializationsLoading ||
                        current is SpecializationsError ||
                        current is SpecializationsSuccess,
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationsLoading: () => CircularProgressIndicator(),
                    specializationsError:
                        (apiErrorModel) =>
                            Text(apiErrorModel.message ?? "error"),
                    specializationsSuccess: (specializationDataList) {
                      return AllSpecializationCategoryBody(
                        specializationDataList: specializationDataList ?? [],
                      );
                    },
                    orElse: () => SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
