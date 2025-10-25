import 'package:doctor_appointment/core/utils/app_images.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpecializationCategories extends StatelessWidget {
  const SpecializationCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.maybeWhen(
          specializationsError: (apiErroeModel) => Text(apiErroeModel.message??"error"),
          orElse: () => SizedBox.shrink(),
          specializationsLoading: () => CircularProgressIndicator(),
          specializationsSuccess: (specializationDataList) {
            return SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Column(
                      spacing: 10,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Color(0xffF4F8FF),
                          child: Image.asset(
                            AppImages.category,
                            height: 60,
                            width: 60,
                          ),
                        ),
                        Text(specializationDataList![index]!.name??"Genral"),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
