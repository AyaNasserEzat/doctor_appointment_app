import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_cubit.dart';
import 'package:doctor_appointment/feature/home/presentation/logic/cubit/home_state.dart';
import 'package:doctor_appointment/feature/home/presentation/screens/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBlocBuilder extends StatelessWidget {
  const DoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen:
          (previous, current) =>
              current is DoctorsLoading ||
              current is DoctorsError ||
              current is DoctorsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          doctorsLoading: () => CircularProgressIndicator(),
          doctorsError:
              (apiErrorModel) => Text(apiErrorModel.message ?? "error"),
          doctorsSuccess: (doctors) {
            return
                DoctorsListView(
                  doctorsList: doctors ?? [],
                  
                
            );
          },
          orElse: () => SizedBox.shrink(),
        );
      },
    );
  }
}
