// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'warning_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WarningEntity _$WarningEntityFromJson(Map<String, dynamic> json) =>
    WarningEntity(
      string: json['string'] as String,
      color: json['color'] as String?,
      severity: (json['severity'] as num).toInt(),
    );

Map<String, dynamic> _$WarningEntityToJson(WarningEntity instance) =>
    <String, dynamic>{
      'string': instance.string,
      'color': instance.color,
      'severity': instance.severity,
    };
