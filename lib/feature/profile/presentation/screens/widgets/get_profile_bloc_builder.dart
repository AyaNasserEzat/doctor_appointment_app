import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_cubit.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_state.dart';
import 'package:doctor_appointment/feature/profile/presentation/screens/widgets/user_profile_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetProfileBlocBuilder extends StatelessWidget {
  const GetProfileBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen:
          (previous, current) =>
              current is GetProfilSuccess ||
              current is GetProfileError ||
              current is GetProfileLoading,
      builder: (context, state) {
        return state.maybeWhen(
          getProfileLoading: () => CircularProgressIndicator(),
          getProfileError:
              (apiErrorModel) => Text(apiErrorModel.message ?? "error"),
          getProfileSuccess: (getProfileResponse) {
            return UserProfileInfo(userData: getProfileResponse.data[0]);
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
