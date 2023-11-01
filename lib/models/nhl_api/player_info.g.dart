// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerInfo _$PlayerInfoFromJson(Map<String, dynamic> json) => PlayerInfo(
      person: Person.fromJson(json['person'] as Map<String, dynamic>),
      jerseyNumber: json['jerseyNumber'] as int,
      position: json['position'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$PlayerInfoToJson(PlayerInfo instance) =>
    <String, dynamic>{
      'person': instance.person,
      'jerseyNumber': instance.jerseyNumber,
      'position': instance.position,
    };
