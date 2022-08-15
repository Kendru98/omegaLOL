import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/stat_perks.dart';
import 'package:omega_lul/models/style.dart';

part 'perks.g.dart';

@JsonSerializable()
class Perks {
  Perks({
    required this.statPerks,
    required this.styles,
  });

  StatPerks statPerks;
  List<Style> styles;

  factory Perks.fromJson(Map<String, dynamic> json) => _$PerksFromJson(json);
}
