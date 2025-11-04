// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentRequestBody _$AppointmentRequestBodyFromJson(
  Map<String, dynamic> json,
) => AppointmentRequestBody(
  startTime: json['start_time'] as String,
  id: (json['doctor_id'] as num).toInt(),
  notes: json['notes'] as String?,
);

Map<String, dynamic> _$AppointmentRequestBodyToJson(
  AppointmentRequestBody instance,
) => <String, dynamic>{
  'doctor_id': instance.id,
  'start_time': instance.startTime,
  'notes': instance.notes,
};
