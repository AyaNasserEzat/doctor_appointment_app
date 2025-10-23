import 'package:json_annotation/json_annotation.dart';
part 'sign_up_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String message;
  final SignupData data;
  final bool status;
  final int code;

  SignupResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);
}

@JsonSerializable()
class SignupData {
  final String token;
  final String username;

  SignupData({required this.token, required this.username});

  factory SignupData.fromJson(Map<String, dynamic> json) =>
      _$SignupDataFromJson(json);
}
