import 'package:json_annotation/json_annotation.dart';

part 'update_profile_response.g.dart';

@JsonSerializable()
class UpdateProfileResponse {
  final String message;
  final UpdatedUserData data;
  final bool status;
  final int code;

  UpdateProfileResponse({
    required this.message,
    required this.data,
    required this.status,
    required this.code,
  });

  factory UpdateProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateProfileResponseToJson(this);
}

@JsonSerializable()
class UpdatedUserData {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String gender;

  @JsonKey(name: 'email_verified_at')
  final String? emailVerifiedAt;

  @JsonKey(name: 'created_at')
  final String createdAt;

  @JsonKey(name: 'updated_at')
  final String updatedAt;

  UpdatedUserData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.gender,
    this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory UpdatedUserData.fromJson(Map<String, dynamic> json) =>
      _$UpdatedUserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UpdatedUserDataToJson(this);
}
