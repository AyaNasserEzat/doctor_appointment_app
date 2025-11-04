import 'package:dio/dio.dart';
import 'package:doctor_appointment/core/networking/api_constant.dart';
import 'package:doctor_appointment/feature/appointment/data/apis/doctor_appoinment_constant.dart';
import 'package:doctor_appointment/feature/appointment/data/models/appointment_request.dart';
import 'package:doctor_appointment/feature/appointment/data/models/get_all_appointments_response.dart';
import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:retrofit/retrofit.dart';

part 'doctor_appointment_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class DoctorAppointmentApiService {
  factory DoctorAppointmentApiService(Dio dio) = _DoctorAppointmentApiService;
  @GET(DoctorAppoinmentConstant.getAllMyAppointments)
  Future<GetAllAppointmentsResponse> getAllMyAppointments();
  @POST(DoctorAppoinmentConstant.storeAppointment)
  Future<AppointmentResponse> storAppoinment(
    @Body() AppointmentRequestBody appointmentRequestBody,
  );
}
