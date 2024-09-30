part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const MainState._();

  const factory MainState({
    @Default(ApiStatus.initial()) ApiStatus loading,
    @Default(CardsEntity.initial()) CardsEntity cardList,
    @Default(CardsEntity.initial()) CardsEntity myCards,
    @Default([]) List<CardsEntity> historyCards,
    @Default([]) List<WarningEntity> dangerWarnings,
    @Default(false) bool picked,
  }) = _MainState;
}
