import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess(List<SpecializationData?>? specializationDataList) = SpecializationsSuccess;
  const factory HomeState.specializationsError(ApiErrorModel apiErroeModel) =
      SpecializationsError;
}
