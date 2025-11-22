import 'dart:async';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/search/data/repo/search_repo.dart';
import 'package:doctor_appointment/feature/search/presentation/logic/cubit/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchState.initial());

  final SearchRepo searchRepo;
  Timer? _debounce;

  void search({required String name}) {
    _debounce?.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () async {
      if (name.isEmpty) return;
      emit(const SearchState.searchDoctorLoading());

      final response = await searchRepo.search(name: name);
      response.when(
        success: (searchResponse) async {
          emit(SearchState.searchDoctorSuccess(searchResponse));
        },
        failure: (apiErrorModel) {
          emit(SearchState.searchDoctorError(apiErrorModel));
        },
      );
    });
  }

  @override
  Future<void> close() {
    _debounce?.cancel();
    return super.close();
  }
}
