// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayerEntity _$PlayerEntityFromJson(Map<String, dynamic> json) => PlayerEntity(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
      cards: (json['cards'] as List<dynamic>)
          .map((e) => CardEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      rank: (json['rank'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlayerEntityToJson(PlayerEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cards': instance.cards,
      'rank': instance.rank,
    };
