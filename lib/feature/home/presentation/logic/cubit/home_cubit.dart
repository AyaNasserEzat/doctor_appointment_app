import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:doctor_appointment/feature/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeState.initial());
  final HomeRepo homeRepo;
  List<SpecializationData>? specializationData;
  void getspecializationsState() async {
    emit(const HomeState.specializationsLoading());
    final response = await homeRepo.getAllSspecializations();
    response.when(
      success: (specializationResponse) {
        specializationData = specializationResponse.data;
        getDoctorsBySpeceializationId(specializationData!.first.id!);
        emit(HomeState.specializationsSuccess(specializationData));
      },
      failure: (apiErroeModel) {
        emit(HomeState.specializationsError(apiErroeModel));
      },
    );
  }

  getDoctorsBySpeceializationId(int speceializationId) {
    emit(HomeState.doctorsLoading());
    List<Doctor>? doctors =
        specializationData
            ?.firstWhere(
              (speceialization) => speceialization.id == speceializationId,
            )
            .doctors;
    if (doctors != null || doctors!.isNotEmpty) {
      emit(HomeState.doctorsSuccess(doctors));
    } else {
      emit(HomeState.doctorsError(ApiErrorModel(message: 'No doctors found')));
    }
  }
}
