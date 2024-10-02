import 'package:cards/domain/entities/player_entity.dart';
import 'package:cards/domain/entities/turn_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_data_entity.g.dart';

@JsonSerializable()
class GameDataEntity {
  final int? round;
  final List<PlayerEntity>? players;
  final List<TurnEntity>? turns;

  // Constructor
  const GameDataEntity({
    this.round,
    this.players,
    this.turns,
  });
  const factory GameDataEntity.initial() = GameDataEntity;
  // Factory method for initial GameDataEntity (can be used as a placeholder)
  // factory GameDataEntity.initial() {
  //   return GameDataEntity(
  //     round: 0,
  //     players: [],
  //     turns: [],
  //   );
  // }
  // const gameData = {
  //   players: [
  //     { id: 1, name: "Player 1", points: 0 },
  //     { id: 2, name: "Player 2", points: 0 },
  //     { id: 3, name: "Player 3", points: 0 },
  //     { id: 4, name: "Player 4", points: 0 }
  //   ],
  //   rounds: [
  //     {
  //       round: 1,
  //       starter: 1, // Player 1 bắt đầu lượt
  //       plays: [
  //         { playerId: 1, cards: ["3♣", "3♠"], timeTaken: 5 }, // Player 1 đánh đôi 3 (Tép, Bích)
  //         { playerId: 2, cards: ["4♦", "4♠"], timeTaken: 7 }, // Player 2 chặn đôi 4 (Rô, Bích)
  //         { playerId: 3, cards: ["5♥", "5♣"], timeTaken: 4 }, // Player 3 chặn đôi 5 (Cơ, Tép)
  //         { playerId: 4, cards: ["6♦", "6♠"], timeTaken: 6 }  // Player 4 chặn đôi 6 (Rô, Bích)
  //       ],
  //       result: { winner: 4 }
  //     }
  //   ]
  // };

  // Factory method to create a GameDataEntity from a map (for manual mapping)
  factory GameDataEntity.fromMap(Map<String, dynamic> map) {
    return GameDataEntity(
      round: map['round'] as int,
      players: (map['players'] as List<dynamic>)
          .map((player) => PlayerEntity.fromMap(player as Map<String, dynamic>))
          .toList(),
      turns: (map['turns'] as List<dynamic>)
          .map((turn) => TurnEntity.fromMap(turn as Map<String, dynamic>))
          .toList(),
    );
  }

  // Factory method to create a GameDataEntity from JSON (for serialization/deserialization)
  factory GameDataEntity.fromJson(Map<String, dynamic> json) {
    return _$GameDataEntityFromJson(json);
  }

  // Method to convert the GameDataEntity object to JSON (for serialization)
  Map<String, dynamic> toJson() => _$GameDataEntityToJson(this);
}
