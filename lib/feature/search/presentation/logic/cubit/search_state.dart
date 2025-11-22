import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState<T> with _$SearchState<T> {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.searchDoctorLoading() = SearchDoctorLoading;
  const factory SearchState.searchDoctorSuccess(List<Doctor> doctorList) =
      SearchDoctorSuccess;
  const factory SearchState.searchDoctorError(ApiErrorModel apiErrorModel) =
      SearchDoctorError;
}
