import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/baron.dart';

part 'objectives.g.dart';

@JsonSerializable()
class Objectives {
  Objectives({
    required this.baron,
    required this.champion,
    required this.dragon,
    required this.inhibitor,
    required this.riftHerald,
    required this.tower,
  });

  Baron baron;
  Baron champion;
  Baron dragon;
  Baron inhibitor;
  Baron riftHerald;
  Baron tower;

  factory Objectives.fromJson(Map<String, dynamic> json) =>
      _$ObjectivesFromJson(json);
}
