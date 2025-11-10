import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/profile/data/models/profile_response.dart';
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
  TextEditingController? editPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  ProfileResponse? profileResponse;
  void getProfile() async {
    emit(const ProfileState.getProfileLoading());
    final response = await profileRepo.getProfile();
    response.when(
      success: (profileResponse) async {
        profileResponse = profileResponse;
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
        //password: editPasswordController!.text,
        phone: editPhoneController!.text,
        gender: '0',
      ),
    );
    response.when(
      success: (profileResponse) async {
        emit(ProfileState.updateProfileSucess(profileResponse));
        // getProfile();
      },
      failure: (apiErroeModel) {
        emit(ProfileState.updateProfileError(apiErroeModel));
      },
    );
  }
}
