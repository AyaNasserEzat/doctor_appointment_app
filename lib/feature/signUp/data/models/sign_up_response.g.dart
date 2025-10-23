// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      message: json['message'] as String,
      data: SignupData.fromJson(json['data'] as Map<String, dynamic>),
      status: json['status'] as bool,
      code: (json['code'] as num).toInt(),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'status': instance.status,
      'code': instance.code,
    };

SignupData _$SignupDataFromJson(Map<String, dynamic> json) => SignupData(
  token: json['token'] as String,
  username: json['username'] as String,
);

Map<String, dynamic> _$SignupDataToJson(SignupData instance) =>
    <String, dynamic>{'token': instance.token, 'username': instance.username};
