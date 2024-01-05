import 'package:json_annotation/json_annotation.dart';

import 'first_name.dart';
import 'last_name.dart';

part 'player_info.g.dart';

// {
// "firstName": {
// "default": "Zach"
// },
// "lastName": {
// "default": "Aston-Reese"
// },
// "birthCity": {
// "default": "Staten Island"
// },
// "birthCountry": "USA",
// "birthStateProvince": {
// "default": "New York"
// }
// },

@JsonSerializable()
class PlayerInfo {
  /// The generated code assumes these values exist in JSON.
  final int id;
  final String headshot;
  final String shootsCatches;
  final FirstName firstName;
  final LastName lastName;
  final int heightInInches;
  final int weightInPounds;
  final String birthDate;
  final int sweaterNumber;
  final String positionCode;

  PlayerInfo(
      {required this.id,
      required this.headshot,
      required this.shootsCatches,
      required this.firstName,
      required this.lastName,
      required this.heightInInches,
      required this.weightInPounds,
      required this.birthDate,
      required this.sweaterNumber,
      required this.positionCode});

  factory PlayerInfo.fromJson(Map<String, dynamic> json) =>
      _$PlayerInfoFromJson(json);
}
