import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctors_list_view.dart';
import 'package:doctor_appointment/feature/search/presentation/logic/cubit/search_cubit.dart';
import 'package:doctor_appointment/feature/search/presentation/logic/cubit/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';

class SearchDoctorBlocBuilder extends StatelessWidget {
  const SearchDoctorBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      buildWhen:
          (previous, current) =>
              current is SearchDoctorLoading ||
              current is SearchDoctorSuccess ||
              current is SearchDoctorError,
      builder: (context, state) {
        return state.maybeWhen(
          searchDoctorLoading: () {
            return Skeletonizer(
              enabled: true,
              child: DoctorsListView(doctorsList: List.filled(5, null)),
            );
          },
          searchDoctorSuccess: (doctors) {
            if (doctors.isEmpty) {
              return Text('no found doctors');
            }
            return DoctorsListView(doctorsList: doctors);
          },
          searchDoctorError:
              (apiErrorModel) => Text(apiErrorModel.message ?? "error"),

          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
