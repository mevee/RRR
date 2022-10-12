// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notesresposne.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notes _$NotesFromJson(Map<String, dynamic> json) => Notes(
      persons: (json['persons'] as List<dynamic>)
          .map((e) => Person.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NotesToJson(Notes instance) => <String, dynamic>{
      'persons': instance.persons,
    };
