import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/runes/rune.dart';

part 'slot.g.dart';

@JsonSerializable()
class Slot {
  Slot({
    required this.runes,
  });

  List<Rune> runes;

  factory Slot.fromJson(Map<String, dynamic> json) => _$SlotFromJson(json);
}
