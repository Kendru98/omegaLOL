import 'package:json_annotation/json_annotation.dart';

part 'selection.g.dart';

@JsonSerializable()
class Selection {
  Selection({
    required this.perk,
    required this.var1,
    required this.var2,
    required this.var3,
  });

  int perk;
  int var1;
  int var2;
  int var3;

  factory Selection.fromJson(Map<String, dynamic> json) =>
      _$SelectionFromJson(json);
}
