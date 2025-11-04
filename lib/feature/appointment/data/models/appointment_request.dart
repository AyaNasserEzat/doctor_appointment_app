
import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_request.g.dart';
@JsonSerializable()
class AppointmentRequestBody {
  @JsonKey(name: 'doctor_id')
  final int id;
  @JsonKey(name: 'start_time')
  final String startTime;
  final String? notes;

  AppointmentRequestBody({required this.startTime, required this.id,this.notes});
  Map<String, dynamic> toJson() => _$AppointmentRequestBodyToJson(this);
}