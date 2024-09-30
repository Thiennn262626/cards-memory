// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cards_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CardsEntity _$CardsEntityFromJson(Map<String, dynamic> json) => CardsEntity(
      deck: (json['deck'] as List<dynamic>?)
          ?.map((e) => CardEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      deckType: $enumDecodeNullable(_$DeckTypeEnumMap, json['deckType']),
      isSorted: json['isSorted'] as bool?,
      typeSort: $enumDecodeNullable(_$TypeSortEnumMap, json['typeSort']),
    );

Map<String, dynamic> _$CardsEntityToJson(CardsEntity instance) =>
    <String, dynamic>{
      'deck': instance.deck,
      'deckType': _$DeckTypeEnumMap[instance.deckType],
      'isSorted': instance.isSorted,
      'typeSort': _$TypeSortEnumMap[instance.typeSort],
    };

const _$DeckTypeEnumMap = {
  DeckType.standard: 'standard',
  DeckType.pinochle: 'pinochle',
  DeckType.bridge: 'bridge',
  DeckType.tarot: 'tarot',
  DeckType.uno: 'uno',
  DeckType.custom: 'custom',
};

const _$TypeSortEnumMap = {
  TypeSort.none: 'none',
  TypeSort.rankOrder: 'rankOrder',
  TypeSort.pairOrder: 'pairOrder',
  TypeSort.flushOrder: 'flushOrder',
  TypeSort.fullHouse: 'fullHouse',
  TypeSort.fourOfAKind: 'fourOfAKind',
  TypeSort.straightFlush: 'straightFlush',
};
