import 'package:json_annotation/json_annotation.dart';
import 'package:omega_lul/models/info.dart';
import 'package:omega_lul/models/metadata.dart';

part 'main_data.g.dart';

@JsonSerializable()
class MainData {
  MainData({
    required this.metadata,
    required this.info,
  });

  Metadata metadata;
  Info info;

  factory MainData.fromJson(Map<String, dynamic> json) =>
      _$MainDataFromJson(json);
}
