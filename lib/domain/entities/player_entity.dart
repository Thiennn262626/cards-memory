import 'package:cards/domain/entities/card_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_entity.g.dart';

@JsonSerializable()
class PlayerEntity {
  final int id;
  final String name;
  final List<CardEntity> cards;
  final int? rank;

  // Constructor
  PlayerEntity({
    required this.id,
    String? name,
    required this.cards,
    this.rank,
  }) : name = name ?? 'user $id';

  // Factory method for initial player entity
  factory PlayerEntity.initial() {
    return PlayerEntity(
      id: 0,
      cards: [], // Empty card list as a placeholder
    );
  }

  // Factory method to create a PlayerEntity from a map (for manual mapping)
  factory PlayerEntity.fromMap(Map<String, dynamic> map) {
    return PlayerEntity(
      id: map['id'] as int,
      name: map['name'] as String? ?? 'user ${map['id']}',
      cards: (map['cards'] as List<dynamic>)
          .map((card) => CardEntity.fromMap(card as Map<String, dynamic>))
          .toList(),
      rank: map['rank'] as int?,
    );
  }

  // Factory method to create a PlayerEntity from JSON (for serialization/deserialization)
  factory PlayerEntity.fromJson(Map<String, dynamic> json) {
    return _$PlayerEntityFromJson(json);
  }

  // Method to convert the player object to JSON (for serialization)
  Map<String, dynamic> toJson() => _$PlayerEntityToJson(this);
}
