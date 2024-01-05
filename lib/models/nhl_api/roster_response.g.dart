// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roster_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RosterResponse _$RosterResponseFromJson(Map<String, dynamic> json) =>
    RosterResponse(
      forwards: (json['forwards'] as List<dynamic>)
          .map((e) => PlayerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      defensemen: (json['defensemen'] as List<dynamic>)
          .map((e) => PlayerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      goalies: (json['goalies'] as List<dynamic>)
          .map((e) => PlayerInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RosterResponseToJson(RosterResponse instance) =>
    <String, dynamic>{
      'forwards': instance.forwards,
      'defensemen': instance.defensemen,
      'goalies': instance.goalies,
    };
