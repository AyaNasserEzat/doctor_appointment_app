import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/profile/data/models/update_profile_request.dart';
import 'package:doctor_appointment/feature/profile/data/repos/profile_repo.dart';
import 'package:doctor_appointment/feature/profile/presentation/logic/cubit/profile_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.profileRepo) : super(ProfileState.initial());
  final ProfileRepo profileRepo;

  TextEditingController? editPhoneController = TextEditingController();
  TextEditingController? editNameController = TextEditingController();
  TextEditingController? editEmailController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void getProfile() async {
    emit(const ProfileState.getProfileLoading());
    final response = await profileRepo.getProfile();
    response.when(
      success: (profileResponse) {
        emit(ProfileState.getProfileSuccess(profileResponse));
      },
      failure: (apiErroeModel) {
        emit(ProfileState.getProfileError(apiErroeModel));
      },
    );
  }

  void updateProfile() async {
    emit(const ProfileState.updateProfileLoading());
    final response = await profileRepo.updateProfile(
      UpdateProfileRequest(
        name: editNameController!.text,
        email: editEmailController!.text,
        phone: editPhoneController!.text,
        gender: '0',
      ),
    );
    response.when(
      success: (profileResponse) {
        emit(ProfileState.updateProfileSucess(profileResponse));
      },
      failure: (apiErroeModel) {
        emit(ProfileState.updateProfileError(apiErroeModel));
      },
    );
  }
}
