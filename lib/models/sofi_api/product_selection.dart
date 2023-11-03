import 'package:flutter_api_starter/models/sofi_api/main_selection.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_selection.g.dart';

@JsonSerializable()
class ProductSelection {
  /// The generated code assumes these values exist in JSON.
  final String title;
  final List<MainSelection> mainSelections;

  ProductSelection({required this.title, required this.mainSelections});

  factory ProductSelection.fromJson(Map<String, dynamic> json) =>
      _$ProductSelectionFromJson(json);
}
