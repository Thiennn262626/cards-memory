// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'turn_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TurnEntity _$TurnEntityFromJson(Map<String, dynamic> json) => TurnEntity(
      turnNumber: (json['turnNumber'] as num).toInt(),
      playerId: (json['playerId'] as num).toInt(),
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$TurnEntityToJson(TurnEntity instance) =>
    <String, dynamic>{
      'turnNumber': instance.turnNumber,
      'playerId': instance.playerId,
      'cards': instance.cards,
      'timestamp': instance.timestamp.toIso8601String(),
    };
