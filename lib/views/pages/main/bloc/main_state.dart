part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const MainState._();

  const factory MainState({
    @Default(ApiStatus.initial()) ApiStatus loading,
    @Default(CardsEntity.initial()) CardsEntity cardList,
    @Default(CardsEntity.initial()) CardsEntity myCards,
    @Default([]) List<CardsEntity> historyCards,
    @Default(GameDataEntity.initial()) GameDataEntity gameData,
    @Default([]) List<WarningEntity> dangerWarnings,
    @Default(false) bool picked,
    @Default([]) List<CardEntity> selectedCards,
  }) = _MainState;
}
