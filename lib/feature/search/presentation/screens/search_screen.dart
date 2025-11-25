import 'package:doctor_appointment/core/di/depensency_injection.dart';
import 'package:doctor_appointment/core/utils/app_colors.dart';
import 'package:doctor_appointment/core/utils/app_text_styles.dart';
import 'package:doctor_appointment/core/widgets/custom_text_form_field.dart';
import 'package:doctor_appointment/feature/search/presentation/logic/cubit/search_cubit.dart';
import 'package:doctor_appointment/feature/search/presentation/screens/widgets/search_doctor_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(getIt()),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 40),
          child: ListView(
            children: [
              Text("Let's Find\nYour doctor", style: AppTextStyles.interBold24),
              Builder(
                builder:
                    (context) => CustomTextFormField(
                      hintText: 'search',
                      suffixIcon: Icon(Icons.search, color: AppColors.gray),
                      fillColor: AppColors.extraLightGray,
                      onChange: (name) {
                        if (name != null && name.isNotEmpty) {
                          context.read<SearchCubit>().search(name: name.trim());
                        }
                      },
                    ),
              ),
              SizedBox(height: 15,),
              SearchDoctorBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
