// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Position _$PositionFromJson(Map<String, dynamic> json) => Position(
      code: json['code'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      abbreviation: json['abbreviation'] as String,
    );

Map<String, dynamic> _$PositionToJson(Position instance) => <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'type': instance.type,
      'abbreviation': instance.abbreviation,
    };
