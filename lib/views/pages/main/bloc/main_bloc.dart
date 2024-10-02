import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cards/common/bloc/api_status.dart';
import 'package:cards/domain/entities/card_entity.dart';
import 'package:cards/domain/entities/cards_entity.dart';
import 'package:cards/domain/entities/game_data_entity.dart';
import 'package:cards/domain/entities/warning_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainState()) {
    on<_MainInitialEvent>(_onMainInitialEvent);
    on<_LoadCardsEvent>(_onLoadCardsEvent);
    on<_PickMyCardsEvent>(_onPickMyCardsEvent);
    on<_RemoveSelectCardEvent>(_onRemoveSelectCardEvent);
    on<_SortMyCardsEvent>(_onSortMyCardsEvent);
    on<_PlayCardsEvent>(_onPlayCardsEvent);
    on<_ToggleSelectCardEvent>(_onToggleSelectCardEvent);
  }
  FutureOr<void> _onMainInitialEvent(
      _MainInitialEvent event, Emitter<MainState> emit) {
    // Logic for initializing the main state can be added here
    emit(state.copyWith(loading: const ApiStatus.initial()));
  }

  FutureOr<void> _onLoadCardsEvent(
      _LoadCardsEvent event, Emitter<MainState> emit) async {
    try {
      emit(state.copyWith(loading: const ApiStatus.loading()));
      await Future.delayed(const Duration(seconds: 1));
      final cards = CardsEntity.standard();
      emit(state.copyWith(loading: const ApiStatus.done(), cardList: cards));
    } catch (e) {
      emit(state.copyWith(
          loading: const ApiStatus.error('error'),
          cardList: const CardsEntity.initial()));
    }
  }

  FutureOr<void> _onPickMyCardsEvent(
      _PickMyCardsEvent event, Emitter<MainState> emit) {
    // Logic to pick cards from the card list to the player's hand
    if (state.cardList.deck != null && state.cardList.deck!.isNotEmpty) {
      // Tạo danh sách các lá bài mới với thuộc tính isFaceUp đã được thay đổi
      final updatedDeck = state.cardList.deck!.map((card) {
        // Kiểm tra xem lá bài hiện tại có nằm trong danh sách selectedCards không
        if (state.selectedCards.contains(card)) {
          return card.copyWith(isFaceUp: false); // Đổi isFaceUp thành false
        }
        return card; // Giữ nguyên nếu không có trong selectedCards
      }).toList();

      final myCards = CardsEntity(
          deck: state.selectedCards,
          typeSort: TypeSort.none,
          isSorted: false,
          deckType: DeckType.custom);
      emit(state.copyWith(
          cardList: state.cardList.copyWith(deck: updatedDeck),
          myCards: myCards,
          picked: true,
          selectedCards: []));
    }
  }

  FutureOr<void> _onRemoveSelectCardEvent(
      _RemoveSelectCardEvent event, Emitter<MainState> emit) {
    // Logic to pick cards from the card list to the player's hand
    if (state.selectedCards.isNotEmpty) {
      emit(state.copyWith(selectedCards: []));
    }
  }

  FutureOr<void> _onSortMyCardsEvent(
      _SortMyCardsEvent event, Emitter<MainState> emit) {
    if (state.myCards.deck != null) {
      if (state.myCards.typeSort != TypeSort.rankOrder) {
        List<CardEntity> sortedDeck = List.from(state.myCards.deck ?? []);
        sortedDeck.sort((a, b) => a.indexRank.compareTo(b.indexRank));
        final sortedCards = state.myCards
            .copyWith(deck: sortedDeck, typeSort: TypeSort.rankOrder);
        emit(state.copyWith(
          myCards: sortedCards,
        ));
      } else {
        List<CardEntity> sortedDeck = List.from(state.myCards.deck ?? []);
        sortedDeck.sort((a, b) => a.indexSuit.compareTo(b.indexSuit));
        final sortedCards = state.myCards
            .copyWith(deck: sortedDeck, typeSort: TypeSort.flushOrder);
        emit(state.copyWith(
          myCards: sortedCards,
        ));
      }
    }
  }

  FutureOr<void> _onPlayCardsEvent(
      _PlayCardsEvent event, Emitter<MainState> emit) {
    // Kiểm tra xem có quân bài nào được chọn không
    if (state.selectedCards.isEmpty) {
    } else {
      // Tạo một bản sao của danh sách các lá bài đã chọn để kiểm tra
      final selectedCards = List<CardEntity>.from(state.selectedCards);

      // TODO: Kiểm tra lượt đánh có hợp lệ không (đây là chỗ bạn có thể viết logic để kiểm tra rác, đôi, ba, tứ quý,...)

      // Sau khi đã kiểm tra hợp lệ, tiếp tục các bước sau:

      // Ghi lại lịch sử đánh bài
      // final newHistory = List.from(state.historyCards);
      // newHistory.add(); // Ghi lại các lá bài đã đánh vào lịch sử

      // Loại bỏ các lá bài đã đánh từ `myCards`
      final updatedMyCards = state.myCards.deck!
          .where((card) => !selectedCards.contains(card))
          .toList();

      // Úp mặt những lá bài còn lại trong tay (nếu cần)
      final updatedDeck =
          updatedMyCards.map((card) => card.copyWith(isFaceUp: false)).toList();

      // Cập nhật lại state
      emit(state.copyWith(
        selectedCards: [],
        // Đã đánh xong, reset selectedCards
        myCards: state.myCards.copyWith(deck: updatedDeck),
        // Cập nhật lại bộ bài của người chơi
        // historyCards: newHistory, // Ghi lại lịch sử
      ));
    }
  }

  FutureOr<void> _onToggleSelectCardEvent(
      _ToggleSelectCardEvent event, Emitter<MainState> emit) {
    final card = event.card;
    List<CardEntity> updatedSelectedCards = List.from(state.selectedCards);

    // Kiểm tra xem đã có lá bài nào được chọn hay chưa
    if (updatedSelectedCards.isNotEmpty) {
      final lastSelect = updatedSelectedCards.last;
      // Nếu lá bài đã được chọn
      if (updatedSelectedCards.contains(card)) {
        updatedSelectedCards.remove(card); // Bỏ chọn lá bài
      } else {
        // Kiểm tra xem lá bài cuối cùng và lá bài hiện tại có cùng thuộc danh sách không
        if (state.cardList.deck!.contains(lastSelect) &&
            state.cardList.deck!.contains(card)) {
          if (updatedSelectedCards.length < 13) {
            updatedSelectedCards.add(card); // Thêm lá bài vào danh sách chọn
          }
        } else if (!state.cardList.deck!.contains(card) &&
            !state.cardList.deck!.contains(lastSelect)) {
          if (updatedSelectedCards.length < 13) {
            updatedSelectedCards.add(card); // Thêm lá bài vào danh sách chọn
          }
        }
      }
    } else {
      // Nếu không có lá bài nào được chọn
      if (updatedSelectedCards.length < 13) {
        updatedSelectedCards.add(card); // Thêm lá bài vào danh sách chọn
      }
    }

    emit(state.copyWith(selectedCards: updatedSelectedCards));
  }
}
