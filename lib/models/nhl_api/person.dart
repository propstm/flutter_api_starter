import 'package:json_annotation/json_annotation.dart';

part 'person.g.dart';

@JsonSerializable()
class Person {
  /// The generated code assumes these values exist in JSON.
  final int id;
  final String fullName;
  final String link;

  Person({required this.id, required this.fullName, required this.link});

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
