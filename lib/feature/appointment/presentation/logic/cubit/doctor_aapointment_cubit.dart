import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/appointment/data/repos/doctor_appoinment_repo.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorAapointmentCubit extends Cubit<DoctorAapointmentState> {
  DoctorAapointmentCubit(this.doctorAppoinmentRepo)
    : super(DoctorAapointmentState.initial());
  final DoctorAppoinmentRepo doctorAppoinmentRepo;

  void getAllMyAppointments() async {
    emit(DoctorAapointmentState.getallAppointmentLoading());
    final response = await doctorAppoinmentRepo.getAllMyAppointments();
    response.when(
      success: (getAllMyAppointmentsResponse) {
        emit(
          DoctorAapointmentState.getallAppointmentSuccess(
            getAllMyAppointmentsResponse,
          ),
        );
      },
      failure: (apiErroeModel) {
        emit(DoctorAapointmentState.getallAppointmentError(apiErroeModel));
      },
    );
  }


}
