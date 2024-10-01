import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cards/common/bloc/api_status.dart';
import 'package:cards/domain/entities/card_entity.dart';
import 'package:cards/domain/entities/cards_entity.dart';
import 'package:cards/domain/entities/warning_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(const MainState()) {
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
    // Logic to handle playing cards
    if (event.isMyCard == true &&
        state.myCards.deck != null &&
        state.myCards.deck!.isNotEmpty) {
      final playedCard =
          state.myCards.deck![0]; // Example: playing the first card
      final updatedMyCards = CardsEntity(
          deck: state.myCards.deck!.sublist(1)); // Remove played card
      emit(state.copyWith(myCards: updatedMyCards));
      // Add additional logic for handling the played card
    }
  }

  // Hàm xử lý chọn/deselect lá bài
  FutureOr<void> _onToggleSelectCardEvent(
      _ToggleSelectCardEvent event, Emitter<MainState> emit) {
    final card = event.card;
    List<CardEntity> updatedSelectedCards = List.from(state.selectedCards);

    if (updatedSelectedCards.contains(card)) {
      updatedSelectedCards.remove(card); // Nếu đã chọn rồi thì bỏ chọn
    } else {
      if (state.selectedCards.length < 13) {
        updatedSelectedCards
            .add(card); // Nếu chưa chọn thì thêm vào danh sách chọn
      }
    }

    emit(state.copyWith(selectedCards: updatedSelectedCards));
  }
}
