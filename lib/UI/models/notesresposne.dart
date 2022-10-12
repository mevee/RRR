// @JsonSerializable()
import 'package:json_annotation/json_annotation.dart';
import 'package:rnr/UI/models/user.dart';
import 'package:rnr/UI/models/user.dart';
part 'notesresposne.g.dart';

@JsonSerializable()
class Notes {
  /// The generated code assumes these values exist in JSON.
  final List<Person> persons;

  Notes({required this.persons});

  /// Connect the generated [_$PersonFromJson] function to the `fromJson`
  /// factory.
  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$NotesToJson(this);
}
