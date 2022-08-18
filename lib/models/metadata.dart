import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  Metadata({
    required this.dataVersion,
    required this.matchId,
    required this.participants,
  });

  String dataVersion;
  String matchId;
  List<String> participants;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);
}
