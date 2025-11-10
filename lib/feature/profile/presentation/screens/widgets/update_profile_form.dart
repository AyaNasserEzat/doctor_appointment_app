import 'package:doctor_appointment/core/utils/app_strings.dart';
import 'package:doctor_appointment/core/widgets/button.dart';
import 'package:doctor_appointment/core/widgets/custom_text_form_field.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/update_profile_bloc_lisenere.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UpdateProfileForm extends StatelessWidget {
  const UpdateProfileForm({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProfileCubit>();
    return Form(
      key: cubit.formKey,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CustomTextFormField(
              controller: cubit.editNameController,
              hintText: AppStrings.name,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              controller: cubit.editEmailController,
              hintText: AppStrings.email,
            ),
            SizedBox(height: 16),
            CustomTextFormField(
              controller: cubit.editPhoneController,
              hintText: AppStrings.yourNumber,
            ),
            SizedBox(height: 20),
            Button(
              text: AppStrings.updateProfile,
              onPressed: () {
                cubit.updateProfile();
              },
            ),
            UpdateProfileBlocLisenere(),
          ],
        ),
      ),
    );
  }
}
