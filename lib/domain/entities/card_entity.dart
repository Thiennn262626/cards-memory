import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_entity.g.dart';

@JsonSerializable()
class CardEntity {
  final String rank;
  final String suit;
  final String color;
  final int value;
  final int indexRank;
  final int indexSuit;
  final bool isFaceUp;
  final bool isJoker;
  final String? imageUrl;

  // Constructor
  CardEntity({
    required this.rank,
    required this.suit,
    required this.color,
    required this.value,
    required this.indexRank,
    required this.indexSuit,
    this.isFaceUp = false,
    this.isJoker = false,
    this.imageUrl,
  });

  // Factory method for initial card (can be used as a placeholder)
  factory CardEntity.initial() {
    return CardEntity(
      rank: '3',
      suit: '♠', // Bích
      color: 'black',
      value: 3,
      indexRank: 0,
      indexSuit: 0,
      isFaceUp: true,
      isJoker: false,
      imageUrl: null,
    );
  }

  // Factory method to create a card from a map (for manual mapping)
  factory CardEntity.fromMap(Map<String, dynamic> map) {
    return CardEntity(
      rank: map['rank'] ?? 'A',
      suit: map['suit'] ?? '♠',
      color: map['color'] ?? 'Đen',
      value: map['value'] ?? 1,
      indexSuit: map['indexSuit'] ?? 1,
      indexRank: map['indexRank'] ?? 1,
      isFaceUp: map['isFaceUp'] ?? false,
      isJoker: map['isJoker'] ?? false,
      imageUrl: map['imageUrl'],
    );
  }

  // Factory method to create a card from JSON (for serialization/deserialization)
  factory CardEntity.fromJson(Map<String, dynamic> json) {
    return _$CardEntityFromJson(json);
  }

  // Method to convert the card object to JSON (for serialization)
  Map<String, dynamic> toJson() => _$CardEntityToJson(this);
}
