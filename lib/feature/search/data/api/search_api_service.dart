import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constant.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/search/data/models/search_response.dart';
import 'package:retrofit/retrofit.dart';

part 'search_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class SearchApiService {
  factory SearchApiService(Dio dio, {String? baseUrl}) = _SearchApiService;
  @GET(ApiConstants.searchDoctor)
  Future<SearchResponse> search(@Query("name") String name);
}
