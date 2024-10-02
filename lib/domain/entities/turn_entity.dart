import 'package:cards/domain/entities/card_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'turn_entity.g.dart';

@JsonSerializable()
class TurnEntity {
  final int turnNumber; // Số thứ tự của lượt đi
  final int playerId; // ID của người chơi thực hiện lượt
  final List<CardEntity> cards; // Danh sách các quân bài đã chơi trong lượt này
  final DateTime timestamp; // Thời gian của lượt đi

  // Constructor
  TurnEntity({
    required this.turnNumber,
    required this.playerId,
    required this.cards,
    required this.timestamp,
  });

  // Factory method for initial TurnEntity (can be used as a placeholder)
  factory TurnEntity.initial() {
    return TurnEntity(
      turnNumber: 0,
      playerId: 0,
      cards: [],
      timestamp: DateTime.now(), // Sử dụng thời gian hiện tại làm mặc định
    );
  }

  // Factory method to create a TurnEntity from a map (for manual mapping)
  factory TurnEntity.fromMap(Map<String, dynamic> map) {
    return TurnEntity(
      turnNumber: map['turnNumber'] as int,
      playerId: map['playerId'] as int,
      cards: (map['cards'] as List<dynamic>)
          .map((card) => CardEntity.fromMap(card as Map<String, dynamic>))
          .toList(),
      timestamp: DateTime.parse(
          map['timestamp'] as String), // Chuyển đổi từ String sang DateTime
    );
  }

  // Factory method to create a TurnEntity from JSON (for serialization/deserialization)
  factory TurnEntity.fromJson(Map<String, dynamic> json) {
    return _$TurnEntityFromJson(json);
  }

  // Method to convert the TurnEntity object to JSON (for serialization)
  Map<String, dynamic> toJson() => _$TurnEntityToJson(this);
}
