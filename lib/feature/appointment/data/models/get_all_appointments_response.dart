import 'package:doctor_appointment/feature/appointment/data/models/store_appointment_respose.dart';
import 'package:json_annotation/json_annotation.dart';


part 'get_all_appointments_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GetAllAppointmentsResponse {
  final String message;
  final List<AppointmentData> data;
  final bool status;
  final int code;

  GetAllAppointmentsResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory GetAllAppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllAppointmentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllAppointmentsResponseToJson(this);
}
