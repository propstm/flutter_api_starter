// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerInfo _$PlayerInfoFromJson(Map<String, dynamic> json) => PlayerInfo(
      id: json['id'] as int,
      headshot: json['headshot'] as String,
      shootsCatches: json['shootsCatches'] as String,
      firstName: FirstName.fromJson(json['firstName'] as Map<String, dynamic>),
      lastName: LastName.fromJson(json['lastName'] as Map<String, dynamic>),
      heightInInches: json['heightInInches'] as int,
      weightInPounds: json['weightInPounds'] as int,
      birthDate: json['birthDate'] as String,
      sweaterNumber: json['sweaterNumber'] as int,
      positionCode: json['positionCode'] as String,
    );

Map<String, dynamic> _$PlayerInfoToJson(PlayerInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'headshot': instance.headshot,
      'shootsCatches': instance.shootsCatches,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'heightInInches': instance.heightInInches,
      'weightInPounds': instance.weightInPounds,
      'birthDate': instance.birthDate,
      'sweaterNumber': instance.sweaterNumber,
      'positionCode': instance.positionCode,
    };
