import 'package:doctor_appointment/core/helper/app_regex.dart';
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
      child: Column(
        children: [
          CustomTextFormField(
            controller: cubit.editNameController,
            hintText: AppStrings.name,
            // validator: (value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter a valid name';
            //   }
            //},
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            controller: cubit.editEmailController,
            hintText: AppStrings.email,
            //validator: (value) {
            //   if (value == null ||
            //       value.isEmpty ||
            //       !AppRegex.isEmailValid(value)) {
            //     return 'Please enter a valid email';
            //   }
            // },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            controller: cubit.editPhoneController,
            hintText: AppStrings.yourNumber,
            // validator: (value) {
            //   if (value == null ||
            //       value.isEmpty ||
            //       !AppRegex.isPhoneNumberValid(value)) {
            //     return 'Please enter a valid phone';
            //   }
            // },
          ),
          SizedBox(height: 16),
          CustomTextFormField(
            controller: cubit.editPasswordController,
            hintText: AppStrings.password,
            isObscureText: true,
            // validator: (value) {
            //   if (value == null ||
            //       value.isEmpty ||
            //       !AppRegex.isPasswordValid(value)) {
            //     return 'Please enter a valid password';
            //   }
            // },
          ),

          SizedBox(height: 20),
          Button(
            text: AppStrings.createAccount,
            onPressed: () {
              cubit.updateProfile();
            },
          ),
          UpdateProfileBlocLisenere(),
        ],
      ),
    );
  }
}
