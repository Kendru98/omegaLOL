import 'package:equatable/equatable.dart';
import 'package:omega_lul/models/runes/slot.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rune_main.g.dart';

@JsonSerializable()
class RuneMain extends Equatable {
  RuneMain({
    required this.id,
    required this.key,
    required this.icon,
    required this.name,
    required this.slots,
  });

  int id;
  String key;
  String icon;
  String name;
  List<Slot> slots;

  factory RuneMain.fromJson(Map<String, dynamic> json) =>
      _$RuneMainFromJson(json);

  @override
  List<Object?> get props => [id, key, icon, name, slots];
}
