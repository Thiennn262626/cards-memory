// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardEntity _$CardEntityFromJson(Map<String, dynamic> json) => CardEntity(
      rank: json['rank'] as String,
      suit: json['suit'] as String,
      color: json['color'] as String,
      value: (json['value'] as num).toInt(),
      indexRank: (json['indexRank'] as num).toInt(),
      indexSuit: (json['indexSuit'] as num).toInt(),
      isFaceUp: json['isFaceUp'] as bool? ?? true,
      isJoker: json['isJoker'] as bool? ?? false,
      imageUrl: json['imageUrl'] as String?,
    );

Map<String, dynamic> _$CardEntityToJson(CardEntity instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'suit': instance.suit,
      'color': instance.color,
      'value': instance.value,
      'indexRank': instance.indexRank,
      'indexSuit': instance.indexSuit,
      'isFaceUp': instance.isFaceUp,
      'isJoker': instance.isJoker,
      'imageUrl': instance.imageUrl,
    };
