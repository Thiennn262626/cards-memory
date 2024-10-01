import 'package:cards/domain/entities/card_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cards_entity.g.dart';

@JsonSerializable()
class CardsEntity {
  final List<CardEntity>? deck; // Một danh sách chứa các lá bài
  final DeckType? deckType; // Loại bộ bài (ví dụ: "Tây", "Tiến Lên")
  final bool? isSorted; // Có sắp xếp hay không
  final TypeSort? typeSort; // Kiểu sắp xếp

  // Constructor
  const CardsEntity({
    this.deck,
    this.deckType,
    this.isSorted,
    this.typeSort,
  });
  CardsEntity copyWith({List<CardEntity>? deck, TypeSort? typeSort}) {
    return CardsEntity(
      deck: deck ?? this.deck,
      typeSort: typeSort ?? this.typeSort,
    );
  }

  // Phương thức thực hiện việc khởi tạo CardsEntity
  const factory CardsEntity.initial() = CardsEntity;

  // Phương thức để tạo một CardsEntity từ map (để ánh xạ thủ công)
  factory CardsEntity.fromMap(Map<String, dynamic> map) {
    return CardsEntity(
      deck: (map['deck'] as List?)
          ?.map((card) => CardEntity.fromMap(card as Map<String, dynamic>))
          .toList(),
      deckType: DeckType.values.firstWhere(
          (e) => e.toString() == map['deckType'],
          orElse: () => DeckType
              .values.first), // Trả về null nếu không tìm thấy //maybe erro
      isSorted: map['isSorted'] ?? false, // Mặc định là false nếu không có
      typeSort: TypeSort.values.firstWhere(
          (e) => e.toString() == map['typeSort'],
          orElse: () =>
              TypeSort.none), // Mặc định là TypeSort.none nếu không tìm thấy
    );
  }

  // Factory method để tạo một CardsEntity từ JSON (để tuần tự hóa/giải tuần tự hóa)
  factory CardsEntity.fromJson(Map<String, dynamic> json) {
    return _$CardsEntityFromJson(json);
  }

  // Phương thức để chuyển đổi đối tượng thành JSON (để tuần tự hóa)
  Map<String, dynamic> toJson() => _$CardsEntityToJson(this);
  // Phương thức khởi tạo với giá trị mặc định
  factory CardsEntity.standard() {
    // Danh sách chứa các lá bài
    List<CardEntity> deck = [];

    // Các bộ bài và giá trị tương ứng
    final List<String> suits = ['♠', '♣', '♦', '♥'];
    final List<String> ranks = [
      '3',
      '4',
      '5',
      '6',
      '7',
      '8',
      '9',
      '10',
      'J',
      'Q',
      'K',
      'A',
      '2'
    ];

    // Khởi tạo 52 lá bài Tây
    for (var suit in suits) {
      for (var rank in ranks) {
        deck.add(CardEntity(
          rank: rank,
          suit: suit,
          color: suits.indexOf(suit) <= 1 ? 'black' : 'red',
          value: ranks.indexOf(rank) + 3, // Giá trị bắt đầu từ 3
          indexRank: ranks.indexOf(rank),
          indexSuit: suits.indexOf(suit),
          isFaceUp: true,
          isJoker: false,
          imageUrl: null,
        ));
      }
    }
    return CardsEntity(
      deck: deck,
      deckType: DeckType.standard, // Mặc định là bộ bài tiêu chuẩn
      isSorted: true,
      typeSort: TypeSort.none,
    );
  }
}

enum TypeSort {
  none,
  rankOrder, // Sắp xếp theo thứ tự giá trị bài
  pairOrder, // Sắp xếp theo đôi
  flushOrder, // Sắp xếp theo sảnh
  fullHouse, // Sắp xếp theo bộ ba và đôi (full house)
  fourOfAKind, // Sắp xếp theo bộ tứ
  straightFlush; // Sắp xếp theo thùng phá sảnh (sảnh đồng chất)

  String get displayValue {
    switch (this) {
      case TypeSort.none:
        return 'Chưa Sắp xếp';
      case TypeSort.rankOrder:
        return 'Sắp xếp theo thứ tự giá trị bài';
      case TypeSort.pairOrder:
        return 'Sắp xếp theo đôi';
      case TypeSort.flushOrder:
        return 'Sắp xếp theo sảnh';
      case TypeSort.fullHouse:
        return 'Sắp xếp theo bộ ba và đôi (full house)';
      case TypeSort.fourOfAKind:
        return 'Sắp xếp theo bộ tứ';
      case TypeSort.straightFlush:
        return 'Sắp xếp theo thùng phá sảnh';
      default:
        return 'Không xác định';
    }
  }
}

enum DeckType {
  standard, // Bộ bài tiêu chuẩn 52 lá
  pinochle, // Bộ bài Pinochle (48 lá)
  bridge, // Bộ bài Bridge (52 lá nhưng sử dụng 4 bộ bài)
  tarot, // Bộ bài Tarot (78 lá)
  uno, // Bộ bài Uno (108 lá)
  custom; // Bộ bài tùy chỉnh

  String get displayValue {
    switch (this) {
      case DeckType.standard:
        return 'Bộ bài tiêu chuẩn (52 lá)';
      case DeckType.pinochle:
        return 'Bộ bài Pinochle (48 lá)';
      case DeckType.bridge:
        return 'Bộ bài Bridge (52 lá)';
      case DeckType.tarot:
        return 'Bộ bài Tarot (78 lá)';
      case DeckType.uno:
        return 'Bộ bài Uno (108 lá)';
      case DeckType.custom:
        return 'Bộ bài tùy chỉnh';
      default:
        return 'Không xác định';
    }
  }

  // Phương thức trả về số lượng lá bài
  int get numberOfCards {
    switch (this) {
      case DeckType.standard:
        return 52;
      case DeckType.pinochle:
        return 48;
      case DeckType.bridge:
        return 52; // Thực tế có thể là 52, nhưng được sử dụng trong nhiều bộ bài.
      case DeckType.tarot:
        return 78;
      case DeckType.uno:
        return 108;
      case DeckType.custom:
        return 12; // Không xác định, có thể là số lượng tùy chỉnh.
      default:
        return 0;
    }
  }
}
