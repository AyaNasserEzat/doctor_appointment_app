import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/home/data/repos/home_repo.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeRepo) : super(HomeState.initial());
  final HomeRepo homeRepo;
  void getspecializationsState() async {
    emit(const HomeState.specializationsLoading());
    final response = await homeRepo.getAllSspecializations();
    response.when(
      success: (specializationResponse) {
        emit(HomeState.specializationsSuccess(specializationResponse.data));
      },
      failure: (apiErroeModel) {
        emit(HomeState.specializationsError(apiErroeModel));
      },
    );
  }
}
