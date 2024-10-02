// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_data_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GameDataEntity _$GameDataEntityFromJson(Map<String, dynamic> json) =>
    GameDataEntity(
      round: (json['round'] as num?)?.toInt(),
      players: (json['players'] as List<dynamic>?)
          ?.map((e) => PlayerEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      turns: (json['turns'] as List<dynamic>?)
          ?.map((e) => TurnEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GameDataEntityToJson(GameDataEntity instance) =>
    <String, dynamic>{
      'round': instance.round,
      'players': instance.players,
      'turns': instance.turns,
    };
