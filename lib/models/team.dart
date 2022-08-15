import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/objectives.dart';

part 'team.g.dart';

@JsonSerializable()
class Team {
  Team({
    required this.objectives,
    required this.teamId,
    required this.win,
  });

  Objectives objectives;
  int teamId;
  bool win;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
