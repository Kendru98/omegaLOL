import 'package:json_annotation/json_annotation.dart';

part 'baron.g.dart';

@JsonSerializable()
class Baron {
  Baron({
    required this.first,
    required this.kills,
  });

  bool first;
  int kills;

  factory Baron.fromJson(Map<String, dynamic> json) => _$BaronFromJson(json);
}
