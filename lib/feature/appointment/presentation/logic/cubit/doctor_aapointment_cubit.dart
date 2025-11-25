import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/appointment/data/models/appointment_request.dart';
import 'package:doctor_appointment/feature/appointment/data/models/notification_model.dart';
import 'package:doctor_appointment/feature/appointment/data/repos/doctor_appoinment_repo.dart';
import 'package:doctor_appointment/feature/appointment/presentation/logic/cubit/doctor_aapointment_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorAapointmentCubit extends Cubit<DoctorAapointmentState> {
  DoctorAapointmentCubit(this.doctorAppoinmentRepo)
    : super(DoctorAapointmentState.initial());
  final DoctorAppoinmentRepo doctorAppoinmentRepo;
  TextEditingController dateContreller = TextEditingController();
  List<NotificationModel> notifications = [];
  void selectDate(DateTime date) {
    dateContreller.text = date.toString().substring(0, 10);
    emit(DoctorAapointmentState.selectDatePicked());
  }

  String? selectedTime;
  void selecTime(String time) {
    selectedTime = time;
    emit(DoctorAapointmentState.selectTime(selectedTime: selectedTime!));
  }

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

  void storeAppointment(int doctorId, BuildContext context) async {
    if (selectedTime != null) {
      emit(DoctorAapointmentState.storeAppointmentLoading());
      final response = await doctorAppoinmentRepo.storAppointment(
        AppointmentRequestBody(
          startTime: dateContreller.text + selectedTime!,
          id: doctorId,
        ),
      );
      response.when(
        success: (storeAppointmentResponse) {
          emit(
            DoctorAapointmentState.storeAppointmentSucess(
              storeAppointmentResponse,
            ),
          );
        },
        failure: (apiErroeModel) {
          emit(DoctorAapointmentState.storeAppointmentError(apiErroeModel));
        },
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('select time please')));
    }
  }
}
