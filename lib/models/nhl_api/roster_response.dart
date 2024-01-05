import 'package:flutter_api_starter/models/nhl_api/player_info.dart';
import 'package:json_annotation/json_annotation.dart';

part 'roster_response.g.dart';

@JsonSerializable()
class RosterResponse {
  /// The generated code assumes these values exist in JSON.
  final List<PlayerInfo> forwards;
  final List<PlayerInfo> defensemen;
  final List<PlayerInfo> goalies;

  RosterResponse(
      {required this.forwards,
      required this.defensemen,
      required this.goalies});

  factory RosterResponse.fromJson(Map<String, dynamic> json) =>
      _$RosterResponseFromJson(json);
}
