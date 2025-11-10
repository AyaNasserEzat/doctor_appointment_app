import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/feature/profile/data/models/profile_response.dart';
import 'package:doctor_appointment/feature/profile/data/models/update_profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState<T> with _$ProfileState<T> {
  const factory ProfileState.initial() = _Initial;

  //profile
  const factory ProfileState.getProfileLoading() = GetProfileLoading;
  const factory ProfileState.getProfileSuccess(
    ProfileResponse profileResponse,
  ) = GetProfilSuccess;
  const factory ProfileState.getProfileError(ApiErrorModel apiErrorModel) =
      GetProfileError;

  //update profile
  const factory ProfileState.updateProfileLoading() = UpdateProfileLoading;
  const factory ProfileState.updateProfileSucess(
    UpdateProfileResponse updateProfileResponse,
  ) = UpdateProfileSuccess;
  const factory ProfileState.updateProfileError(ApiErrorModel apiErroeModel) =
      UpdateProfileError;
}
