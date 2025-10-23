import 'package:json_annotation/json_annotation.dart';
part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String password;
  final int phone;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;

  SignupRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.passwordConfirmation,
  });
  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
