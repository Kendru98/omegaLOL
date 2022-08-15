import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/selection.dart';

part 'style.g.dart';

enum Description { primary_style, sub_style }

@JsonSerializable()
class Style {
  Style({
    required this.description,
    required this.selections,
    required this.style,
  });

  Description description;
  List<Selection> selections;
  int style;

  factory Style.fromJson(Map<String, dynamic> json) => _$StyleFromJson(json);
}
