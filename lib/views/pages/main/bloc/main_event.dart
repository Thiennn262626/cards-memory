part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const MainEvent._();

  const factory MainEvent.initial() = _MainInitialEvent;
  const factory MainEvent.loadCardsEvent() = _LoadCardsEvent;
  const factory MainEvent.pickMyCardsEvent() = _PickMyCardsEvent;
  const factory MainEvent.sortMyCardsEvent(TypeSort? typeSort) =
      _SortMyCardsEvent;
  const factory MainEvent.playCardsEvent(bool? isMyCard) = _PlayCardsEvent;
  const factory MainEvent.toggleSelectCardEvent(CardEntity card) =
      _ToggleSelectCardEvent;
}
