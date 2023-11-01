import 'package:flutter_api_starter/models/nhl_api/person.dart';
import 'package:json_annotation/json_annotation.dart';

part 'player_info.g.dart';

@JsonSerializable()
class PlayerInfo {
  /// The generated code assumes these values exist in JSON.
  final Person person;
  final int jerseyNumber;
  final Map<String, dynamic> position;

  PlayerInfo(
      {required this.person,
      required this.jerseyNumber,
      required this.position});

  factory PlayerInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayerInfoFromJson(json);
}
