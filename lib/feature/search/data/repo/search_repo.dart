import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/search/data/api/search_api_service.dart';

class SearchRepo {
  SearchApiService searchApiService;
  SearchRepo(this.searchApiService);
  Future<ApiResult<List<Doctor>>> search({required String name}) async {
    try {
      final res = await searchApiService.search(name);
      return ApiResult.success(res.data??[]);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }
}
