import 'package:json_annotation/json_annotation.dart';

part 'position.g.dart';

@JsonSerializable()
class Position {
  /// The generated code assumes these values exist in JSON.
  final String code;
  final String name;
  final String type;
  final String abbreviation;

  Position(
      {required this.code,
      required this.name,
      required this.type,
      required this.abbreviation});

  factory Position.fromJson(Map<String, dynamic> json) =>
      _$PositionFromJson(json);
}
