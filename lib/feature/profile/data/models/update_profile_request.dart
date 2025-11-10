import 'package:json_annotation/json_annotation.dart';

part 'update_profile_request.g.dart';

@JsonSerializable()
class UpdateProfileRequest {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String gender;

  UpdateProfileRequest({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$UpdateProfileRequestToJson(this);
}
