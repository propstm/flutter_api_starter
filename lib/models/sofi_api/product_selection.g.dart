// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_selection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductSelection _$ProductSelectionFromJson(Map<String, dynamic> json) =>
    ProductSelection(
      title: json['title'] as String,
      mainSelections: (json['mainSelections'] as List<dynamic>)
          .map((e) => MainSelection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductSelectionToJson(ProductSelection instance) =>
    <String, dynamic>{
      'title': instance.title,
      'mainSelections': instance.mainSelections,
    };
