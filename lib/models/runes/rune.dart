import 'package:json_annotation/json_annotation.dart';

part 'rune.g.dart';

@JsonSerializable()
class Rune {
  Rune({
    required this.id,
    required this.key,
    required this.icon,
    required this.name,
    required this.shortDesc,
    required this.longDesc,
  });

  int id;
  String key;
  String icon;
  String name;
  String shortDesc;
  String longDesc;

  factory Rune.fromJson(Map<String, dynamic> json) => _$RuneFromJson(json);
}
