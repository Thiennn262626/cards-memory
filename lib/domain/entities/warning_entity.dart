import 'package:freezed_annotation/freezed_annotation.dart';

part 'warning_entity.g.dart';

@JsonSerializable()
class WarningEntity {
  final String string;
  final String? color;
  final int
      severity; // Mức độ nghiêm trọng của cảnh báo, càng cao càng quan trọng

  // Constructor
  WarningEntity({
    required this.string,
    this.color,
    required this.severity,
  });

  // Factory để tạo đối tượng WarningEntity từ JSON
  factory WarningEntity.fromJson(Map<String, dynamic> json) =>
      _$WarningEntityFromJson(json);

  // Phương thức để chuyển đối tượng WarningEntity thành JSON
  Map<String, dynamic> toJson() => _$WarningEntityToJson(this);

  // Cảnh báo còn 3 lá lớn hơn
  factory WarningEntity.hasThreeCardBigger() {
    return WarningEntity(
      string: 'Còn 3 lá lớn hơn',
      severity: 2, // Mức độ nghiêm trọng trung bình
    );
  }

  // Cảnh báo còn đôi
  factory WarningEntity.hasPair() {
    return WarningEntity(
      string: 'Còn đôi!',
      severity: 1, // Mức độ nghiêm trọng thấp
    );
  }

  // Cảnh báo còn heo
  factory WarningEntity.hasTwo() {
    return WarningEntity(
      string: 'Lá heo!',
      severity: 3, // Mức độ nghiêm trọng cao
    );
  }

  // Cảnh báo còn xì
  factory WarningEntity.hasAce() {
    return WarningEntity(
      string: 'Lá xì!',
      severity: 2, // Mức độ nghiêm trọng trung bình
    );
  }

  // Cảnh báo còn tứ quý
  factory WarningEntity.hasFourOfAKind() {
    return WarningEntity(
      string: 'Tứ quý!',
      severity: 4, // Mức độ nghiêm trọng rất cao
    );
  }

  // Cảnh báo còn 3 đôi thông
  factory WarningEntity.hasThreeConsecutivePairs() {
    return WarningEntity(
      string: '3 đôi thông!',
      severity: 3, // Mức độ nghiêm trọng cao
    );
  }

  // Cảnh báo còn 4 đôi thông
  factory WarningEntity.hasFourConsecutivePairs() {
    return WarningEntity(
      string: '4 đôi thông!',
      severity: 4, // Mức độ nghiêm trọng rất cao
    );
  }

  // Cảnh báo còn sảnh
  factory WarningEntity.hasStraight() {
    return WarningEntity(
      string: 'Sảnh!',
      severity: 1, // Mức độ nghiêm trọng thấp
    );
  }
}
