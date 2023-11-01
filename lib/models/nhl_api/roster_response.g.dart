// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roster_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RosterResponse _$RosterResponseFromJson(Map<String, dynamic> json) =>
    RosterResponse(
      roster: (json['roster'] as List<dynamic>)
          .map((e) => PlayerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RosterResponseToJson(RosterResponse instance) =>
    <String, dynamic>{
      'roster': instance.roster,
    };
