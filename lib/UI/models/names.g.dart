// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'names.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Names _$NamesFromJson(Map<String, dynamic> json) => Names(
      myName:
          (json['myName'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$NamesToJson(Names instance) => <String, dynamic>{
      'myName': instance.myName,
    };
