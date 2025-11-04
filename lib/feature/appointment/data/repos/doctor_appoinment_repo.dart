import 'package:doctor_appointment/core/networking/api_error_handler.dart';
import 'package:doctor_appointment/core/networking/api_result.dart';
import 'package:doctor_appointment/feature/appointment/data/apis/doctor_appointment_api_service.dart';
import 'package:doctor_appointment/feature/appointment/data/models/appointment_request.dart';
import 'package:doctor_appointment/feature/appointment/data/models/get_all_appointments_response.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';

class DoctorAppoinmentRepo {
  final DoctorAppointmentApiService _doctorAppointmentApiService;
  DoctorAppoinmentRepo(this._doctorAppointmentApiService);
  Future<ApiResult<GetAllAppointmentsResponse>> getAllMyAppointments() async {
    try {
      final response =
          await _doctorAppointmentApiService.getAllMyAppointments();
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }

  Future<ApiResult<AppointmentResponse>> storAppointment(AppointmentRequestBody appointmentRequestBody) async {
    try {
      final response =
          await _doctorAppointmentApiService.storAppoinment(appointmentRequestBody);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(ApiErrorHandler.handel(e));
    }
  }
}
