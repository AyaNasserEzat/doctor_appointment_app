import 'package:doctor_appointment/feature/home/data/models/specialization_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  final String? message;
  final List<Doctor>? data;
  final bool? status;
  final int? code;

  SearchResponse({
    this.message,
    this.data,
    this.status,
    this.code,
  });

  factory SearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
