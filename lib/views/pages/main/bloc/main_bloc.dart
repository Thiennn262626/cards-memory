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
    on<_SortMyCardsEvent>(_onSortMyCardsEvent);
    on<_PlayCardsEvent>(_onPlayCardsEvent);
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
      final myCards = CardsEntity(
          deck: state.cardList.deck!
              .sublist(0, 2)); // Example: picking the first two cards
      emit(state.copyWith(myCards: myCards, picked: true));
    }
  }

  FutureOr<void> _onSortMyCardsEvent(
      _SortMyCardsEvent event, Emitter<MainState> emit) {
    // Logic to sort the player's cards based on the given typeSort
    if (state.myCards.deck != null) {
      List<CardEntity> sortedDeck = List.from(state.myCards.deck!);
      // Add your sorting logic based on typeSort
      emit(state.copyWith(myCards: CardsEntity(deck: sortedDeck)));
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
}
