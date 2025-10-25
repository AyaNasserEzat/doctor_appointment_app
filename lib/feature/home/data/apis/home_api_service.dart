import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constant.dart';
import 'package:doctor_appointment/feature/home/data/apis/home_api_constanta.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:retrofit/retrofit.dart';

part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;
  @GET(HomeApiConstanta.specializationEndPoint)
  Future<SpecializationResponse> getAllSspecializations();
}
