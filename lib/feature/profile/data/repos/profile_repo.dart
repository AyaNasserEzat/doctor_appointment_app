import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/profile/data/api_service/profile_api_service.dart';
import 'package:doctor_appointment/feature/profile/data/models/profile_response.dart';
import 'package:doctor_appointment/feature/profile/data/models/update_profile_request.dart';
import 'package:doctor_appointment/feature/profile/data/models/update_profile_response.dart';

class ProfileRepo {
  final ProfileApiService _profileApiService;
  ProfileRepo(this._profileApiService);
  Future<ApiResult<ProfileResponse>> getProfile() async {
    try {
      final response = await _profileApiService.getProfile();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }

  Future<ApiResult<UpdateProfileResponse>> updateProfile(
    UpdateProfileRequest updateProfileRequest,
  ) async {
    try {
      final response = await _profileApiService.updatePrfile(
        updateProfileRequest,
      );
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }
}
