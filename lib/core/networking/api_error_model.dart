import 'package:json_annotation/json_annotation.dart';
part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  final String? message;
  final int? code;
  @JsonKey(name: 'data')
  final dynamic errors;

  ApiErrorModel({this.message, this.code, this.errors});

  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);

  String getAllErrorMessages() {
    if (errors == null || errors!.isEmpty) {
      return message ?? "Unknown error occurred";
    }

    final errorMessages = errors!.entries
        .map((entry) {
          final field = entry.key;
          final messages = entry.value.join(", ");
          return messages;
        })
        .join("\n");
    print(errorMessages);
    return errorMessages;
  }
}
