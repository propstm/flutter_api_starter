import 'package:json_annotation/json_annotation.dart';

part 'main_selection.g.dart';

@JsonSerializable()
class MainSelection {
  /// The generated code assumes these values exist in JSON.
  final String title;
  final String icon;
  final String? nativePath;
  final Map<String, dynamic> attribute;

  MainSelection(
      {required this.title,
      required this.icon,
      this.nativePath,
      required this.attribute});

  factory MainSelection.fromJson(Map<String, dynamic> json) =>
      _$MainSelectionFromJson(json);
}
