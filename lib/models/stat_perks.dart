import 'package:json_annotation/json_annotation.dart';

part 'stat_perks.g.dart';

@JsonSerializable()
class StatPerks {
  StatPerks({
    required this.defense,
    required this.flex,
    required this.offense,
  });

  int defense;
  int flex;
  int offense;

  factory StatPerks.fromJson(Map<String, dynamic> json) =>
      _$StatPerksFromJson(json);
}
