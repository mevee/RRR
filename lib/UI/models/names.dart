import 'package:json_annotation/json_annotation.dart';

part 'names.g.dart';

@JsonSerializable()
class Names {
  final List<String>? myName;
  Names({this.myName});
  factory Names.fromJson(Map<String, dynamic> json) => _$NamesFromJson(json);

  Map<String, dynamic> toJson() => _$NamesToJson(this);
}
