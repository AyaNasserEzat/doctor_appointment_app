// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_appointments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllAppointmentsResponse _$GetAllAppointmentsResponseFromJson(
  Map<String, dynamic> json,
) => GetAllAppointmentsResponse(
  message: json['message'] as String,
  data:
      (json['data'] as List<dynamic>)
          .map((e) => AppointmentData.fromJson(e as Map<String, dynamic>))
          .toList(),
  status: json['status'] as bool,
  code: (json['code'] as num).toInt(),
);

Map<String, dynamic> _$GetAllAppointmentsResponseToJson(
  GetAllAppointmentsResponse instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.data.map((e) => e.toJson()).toList(),
  'status': instance.status,
  'code': instance.code,
};
