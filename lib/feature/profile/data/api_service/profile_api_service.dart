import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constant.dart';
import 'package:doctor_appointment/feature/profile/data/models/profile_response.dart';
import 'package:doctor_appointment/feature/profile/data/models/update_profile_request.dart';
import 'package:doctor_appointment/feature/profile/data/models/update_profile_response.dart';
import 'package:retrofit/retrofit.dart';
part 'profile_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ProfileApiService {
  factory ProfileApiService(Dio dio, {String? baseUrl}) = _ProfileApiService;

  @GET(ApiConstants.getProfile)
  Future<ProfileResponse> getProfile();
  
  @POST(ApiConstants.updateProfile)
  Future<UpdateProfileResponse> updatePrfile(
    @Body() UpdateProfileRequest updateProfileRequest,
  );
}
