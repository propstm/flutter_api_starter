// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainSelection _$MainSelectionFromJson(Map<String, dynamic> json) =>
    MainSelection(
      title: json['title'] as String,
      icon: json['icon'] as String,
      nativePath: json['nativePath'] as String?,
      attribute: json['attribute'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$MainSelectionToJson(MainSelection instance) =>
    <String, dynamic>{
      'title': instance.title,
      'icon': instance.icon,
      'nativePath': instance.nativePath,
      'attribute': instance.attribute,
    };
