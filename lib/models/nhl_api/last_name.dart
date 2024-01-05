import 'package:json_annotation/json_annotation.dart';

part 'last_name.g.dart';

@JsonSerializable()
class LastName {
  @JsonKey(name: 'default')
  final String name;

  LastName({required this.name});

  factory LastName.fromJson(Map<String, dynamic> json) =>
      _$LastNameFromJson(json);
}
