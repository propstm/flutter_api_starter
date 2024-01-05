import 'package:json_annotation/json_annotation.dart';

part 'first_name.g.dart';

@JsonSerializable()
class FirstName {
  @JsonKey(name: 'default')
  final String name;

  FirstName({required this.name});

  factory FirstName.fromJson(Map<String, dynamic> json) =>
      _$FirstNameFromJson(json);
}
