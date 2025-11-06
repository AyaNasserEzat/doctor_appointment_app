import 'package:doctor_appointment/core/networking/api_error_model.dart';
import 'package:doctor_appointment/feature/appointment/data/models/get_all_appointments_response.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_aapointment_state.freezed.dart';

@freezed
class DoctorAapointmentState with _$DoctorAapointmentState {
  const factory DoctorAapointmentState.initial() = _Initial;

  // get all appoinment
  const factory DoctorAapointmentState.getallAppointmentLoading() = GetallAppointmentLoading;
  const factory DoctorAapointmentState.getallAppointmentSuccess(GetAllAppointmentsResponse getAllAppointmentsResponse) = GetallAppointmentSuccess;
  const factory DoctorAapointmentState.getallAppointmentError(ApiErrorModel apiErroeModel) =
      GetallAppointmentError;

  //store appointment
  const factory DoctorAapointmentState.storeAppointmentLoading() = StoreAppointmentLoading;
  const factory DoctorAapointmentState.storeAppointmentSucess(AppointmentResponse storAppoinmentResponse) = StoreAppointmentSucess;
  const factory DoctorAapointmentState.storeAppointmentError(ApiErrorModel apiErroeModel) =
      StoreAppointmentError;

  //date and time
  const factory DoctorAapointmentState.selectDatePicked() = SelectDatePicked;
  const factory DoctorAapointmentState.selectTime({required String selectedTime}) = SelectTime;
}
