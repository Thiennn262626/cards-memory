// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCardsEvent,
    required TResult Function() pickMyCardsEvent,
    required TResult Function(TypeSort? typeSort) sortMyCardsEvent,
    required TResult Function(bool? isMyCard) playCardsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCardsEvent,
    TResult? Function()? pickMyCardsEvent,
    TResult? Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult? Function(bool? isMyCard)? playCardsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCardsEvent,
    TResult Function()? pickMyCardsEvent,
    TResult Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult Function(bool? isMyCard)? playCardsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainInitialEvent value) initial,
    required TResult Function(_LoadCardsEvent value) loadCardsEvent,
    required TResult Function(_PickMyCardsEvent value) pickMyCardsEvent,
    required TResult Function(_SortMyCardsEvent value) sortMyCardsEvent,
    required TResult Function(_PlayCardsEvent value) playCardsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainInitialEvent value)? initial,
    TResult? Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult? Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult? Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult? Function(_PlayCardsEvent value)? playCardsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainInitialEvent value)? initial,
    TResult Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult Function(_PlayCardsEvent value)? playCardsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainInitialEventImplCopyWith<$Res> {
  factory _$$MainInitialEventImplCopyWith(_$MainInitialEventImpl value,
          $Res Function(_$MainInitialEventImpl) then) =
      __$$MainInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainInitialEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainInitialEventImpl>
    implements _$$MainInitialEventImplCopyWith<$Res> {
  __$$MainInitialEventImplCopyWithImpl(_$MainInitialEventImpl _value,
      $Res Function(_$MainInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainInitialEventImpl extends _MainInitialEvent {
  const _$MainInitialEventImpl() : super._();

  @override
  String toString() {
    return 'MainEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MainInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCardsEvent,
    required TResult Function() pickMyCardsEvent,
    required TResult Function(TypeSort? typeSort) sortMyCardsEvent,
    required TResult Function(bool? isMyCard) playCardsEvent,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCardsEvent,
    TResult? Function()? pickMyCardsEvent,
    TResult? Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult? Function(bool? isMyCard)? playCardsEvent,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCardsEvent,
    TResult Function()? pickMyCardsEvent,
    TResult Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult Function(bool? isMyCard)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainInitialEvent value) initial,
    required TResult Function(_LoadCardsEvent value) loadCardsEvent,
    required TResult Function(_PickMyCardsEvent value) pickMyCardsEvent,
    required TResult Function(_SortMyCardsEvent value) sortMyCardsEvent,
    required TResult Function(_PlayCardsEvent value) playCardsEvent,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainInitialEvent value)? initial,
    TResult? Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult? Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult? Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult? Function(_PlayCardsEvent value)? playCardsEvent,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainInitialEvent value)? initial,
    TResult Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult Function(_PlayCardsEvent value)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _MainInitialEvent extends MainEvent {
  const factory _MainInitialEvent() = _$MainInitialEventImpl;
  const _MainInitialEvent._() : super._();
}

/// @nodoc
abstract class _$$LoadCardsEventImplCopyWith<$Res> {
  factory _$$LoadCardsEventImplCopyWith(_$LoadCardsEventImpl value,
          $Res Function(_$LoadCardsEventImpl) then) =
      __$$LoadCardsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadCardsEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$LoadCardsEventImpl>
    implements _$$LoadCardsEventImplCopyWith<$Res> {
  __$$LoadCardsEventImplCopyWithImpl(
      _$LoadCardsEventImpl _value, $Res Function(_$LoadCardsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadCardsEventImpl extends _LoadCardsEvent {
  const _$LoadCardsEventImpl() : super._();

  @override
  String toString() {
    return 'MainEvent.loadCardsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadCardsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCardsEvent,
    required TResult Function() pickMyCardsEvent,
    required TResult Function(TypeSort? typeSort) sortMyCardsEvent,
    required TResult Function(bool? isMyCard) playCardsEvent,
  }) {
    return loadCardsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCardsEvent,
    TResult? Function()? pickMyCardsEvent,
    TResult? Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult? Function(bool? isMyCard)? playCardsEvent,
  }) {
    return loadCardsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCardsEvent,
    TResult Function()? pickMyCardsEvent,
    TResult Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult Function(bool? isMyCard)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (loadCardsEvent != null) {
      return loadCardsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainInitialEvent value) initial,
    required TResult Function(_LoadCardsEvent value) loadCardsEvent,
    required TResult Function(_PickMyCardsEvent value) pickMyCardsEvent,
    required TResult Function(_SortMyCardsEvent value) sortMyCardsEvent,
    required TResult Function(_PlayCardsEvent value) playCardsEvent,
  }) {
    return loadCardsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainInitialEvent value)? initial,
    TResult? Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult? Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult? Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult? Function(_PlayCardsEvent value)? playCardsEvent,
  }) {
    return loadCardsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainInitialEvent value)? initial,
    TResult Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult Function(_PlayCardsEvent value)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (loadCardsEvent != null) {
      return loadCardsEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadCardsEvent extends MainEvent {
  const factory _LoadCardsEvent() = _$LoadCardsEventImpl;
  const _LoadCardsEvent._() : super._();
}

/// @nodoc
abstract class _$$PickMyCardsEventImplCopyWith<$Res> {
  factory _$$PickMyCardsEventImplCopyWith(_$PickMyCardsEventImpl value,
          $Res Function(_$PickMyCardsEventImpl) then) =
      __$$PickMyCardsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickMyCardsEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$PickMyCardsEventImpl>
    implements _$$PickMyCardsEventImplCopyWith<$Res> {
  __$$PickMyCardsEventImplCopyWithImpl(_$PickMyCardsEventImpl _value,
      $Res Function(_$PickMyCardsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickMyCardsEventImpl extends _PickMyCardsEvent {
  const _$PickMyCardsEventImpl() : super._();

  @override
  String toString() {
    return 'MainEvent.pickMyCardsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickMyCardsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCardsEvent,
    required TResult Function() pickMyCardsEvent,
    required TResult Function(TypeSort? typeSort) sortMyCardsEvent,
    required TResult Function(bool? isMyCard) playCardsEvent,
  }) {
    return pickMyCardsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCardsEvent,
    TResult? Function()? pickMyCardsEvent,
    TResult? Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult? Function(bool? isMyCard)? playCardsEvent,
  }) {
    return pickMyCardsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCardsEvent,
    TResult Function()? pickMyCardsEvent,
    TResult Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult Function(bool? isMyCard)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (pickMyCardsEvent != null) {
      return pickMyCardsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainInitialEvent value) initial,
    required TResult Function(_LoadCardsEvent value) loadCardsEvent,
    required TResult Function(_PickMyCardsEvent value) pickMyCardsEvent,
    required TResult Function(_SortMyCardsEvent value) sortMyCardsEvent,
    required TResult Function(_PlayCardsEvent value) playCardsEvent,
  }) {
    return pickMyCardsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainInitialEvent value)? initial,
    TResult? Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult? Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult? Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult? Function(_PlayCardsEvent value)? playCardsEvent,
  }) {
    return pickMyCardsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainInitialEvent value)? initial,
    TResult Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult Function(_PlayCardsEvent value)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (pickMyCardsEvent != null) {
      return pickMyCardsEvent(this);
    }
    return orElse();
  }
}

abstract class _PickMyCardsEvent extends MainEvent {
  const factory _PickMyCardsEvent() = _$PickMyCardsEventImpl;
  const _PickMyCardsEvent._() : super._();
}

/// @nodoc
abstract class _$$SortMyCardsEventImplCopyWith<$Res> {
  factory _$$SortMyCardsEventImplCopyWith(_$SortMyCardsEventImpl value,
          $Res Function(_$SortMyCardsEventImpl) then) =
      __$$SortMyCardsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TypeSort? typeSort});
}

/// @nodoc
class __$$SortMyCardsEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$SortMyCardsEventImpl>
    implements _$$SortMyCardsEventImplCopyWith<$Res> {
  __$$SortMyCardsEventImplCopyWithImpl(_$SortMyCardsEventImpl _value,
      $Res Function(_$SortMyCardsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeSort = freezed,
  }) {
    return _then(_$SortMyCardsEventImpl(
      freezed == typeSort
          ? _value.typeSort
          : typeSort // ignore: cast_nullable_to_non_nullable
              as TypeSort?,
    ));
  }
}

/// @nodoc

class _$SortMyCardsEventImpl extends _SortMyCardsEvent {
  const _$SortMyCardsEventImpl(this.typeSort) : super._();

  @override
  final TypeSort? typeSort;

  @override
  String toString() {
    return 'MainEvent.sortMyCardsEvent(typeSort: $typeSort)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SortMyCardsEventImpl &&
            (identical(other.typeSort, typeSort) ||
                other.typeSort == typeSort));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeSort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SortMyCardsEventImplCopyWith<_$SortMyCardsEventImpl> get copyWith =>
      __$$SortMyCardsEventImplCopyWithImpl<_$SortMyCardsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCardsEvent,
    required TResult Function() pickMyCardsEvent,
    required TResult Function(TypeSort? typeSort) sortMyCardsEvent,
    required TResult Function(bool? isMyCard) playCardsEvent,
  }) {
    return sortMyCardsEvent(typeSort);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCardsEvent,
    TResult? Function()? pickMyCardsEvent,
    TResult? Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult? Function(bool? isMyCard)? playCardsEvent,
  }) {
    return sortMyCardsEvent?.call(typeSort);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCardsEvent,
    TResult Function()? pickMyCardsEvent,
    TResult Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult Function(bool? isMyCard)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (sortMyCardsEvent != null) {
      return sortMyCardsEvent(typeSort);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainInitialEvent value) initial,
    required TResult Function(_LoadCardsEvent value) loadCardsEvent,
    required TResult Function(_PickMyCardsEvent value) pickMyCardsEvent,
    required TResult Function(_SortMyCardsEvent value) sortMyCardsEvent,
    required TResult Function(_PlayCardsEvent value) playCardsEvent,
  }) {
    return sortMyCardsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainInitialEvent value)? initial,
    TResult? Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult? Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult? Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult? Function(_PlayCardsEvent value)? playCardsEvent,
  }) {
    return sortMyCardsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainInitialEvent value)? initial,
    TResult Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult Function(_PlayCardsEvent value)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (sortMyCardsEvent != null) {
      return sortMyCardsEvent(this);
    }
    return orElse();
  }
}

abstract class _SortMyCardsEvent extends MainEvent {
  const factory _SortMyCardsEvent(final TypeSort? typeSort) =
      _$SortMyCardsEventImpl;
  const _SortMyCardsEvent._() : super._();

  TypeSort? get typeSort;
  @JsonKey(ignore: true)
  _$$SortMyCardsEventImplCopyWith<_$SortMyCardsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayCardsEventImplCopyWith<$Res> {
  factory _$$PlayCardsEventImplCopyWith(_$PlayCardsEventImpl value,
          $Res Function(_$PlayCardsEventImpl) then) =
      __$$PlayCardsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool? isMyCard});
}

/// @nodoc
class __$$PlayCardsEventImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$PlayCardsEventImpl>
    implements _$$PlayCardsEventImplCopyWith<$Res> {
  __$$PlayCardsEventImplCopyWithImpl(
      _$PlayCardsEventImpl _value, $Res Function(_$PlayCardsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMyCard = freezed,
  }) {
    return _then(_$PlayCardsEventImpl(
      freezed == isMyCard
          ? _value.isMyCard
          : isMyCard // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$PlayCardsEventImpl extends _PlayCardsEvent {
  const _$PlayCardsEventImpl(this.isMyCard) : super._();

  @override
  final bool? isMyCard;

  @override
  String toString() {
    return 'MainEvent.playCardsEvent(isMyCard: $isMyCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayCardsEventImpl &&
            (identical(other.isMyCard, isMyCard) ||
                other.isMyCard == isMyCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMyCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayCardsEventImplCopyWith<_$PlayCardsEventImpl> get copyWith =>
      __$$PlayCardsEventImplCopyWithImpl<_$PlayCardsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadCardsEvent,
    required TResult Function() pickMyCardsEvent,
    required TResult Function(TypeSort? typeSort) sortMyCardsEvent,
    required TResult Function(bool? isMyCard) playCardsEvent,
  }) {
    return playCardsEvent(isMyCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadCardsEvent,
    TResult? Function()? pickMyCardsEvent,
    TResult? Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult? Function(bool? isMyCard)? playCardsEvent,
  }) {
    return playCardsEvent?.call(isMyCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadCardsEvent,
    TResult Function()? pickMyCardsEvent,
    TResult Function(TypeSort? typeSort)? sortMyCardsEvent,
    TResult Function(bool? isMyCard)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (playCardsEvent != null) {
      return playCardsEvent(isMyCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainInitialEvent value) initial,
    required TResult Function(_LoadCardsEvent value) loadCardsEvent,
    required TResult Function(_PickMyCardsEvent value) pickMyCardsEvent,
    required TResult Function(_SortMyCardsEvent value) sortMyCardsEvent,
    required TResult Function(_PlayCardsEvent value) playCardsEvent,
  }) {
    return playCardsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainInitialEvent value)? initial,
    TResult? Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult? Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult? Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult? Function(_PlayCardsEvent value)? playCardsEvent,
  }) {
    return playCardsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainInitialEvent value)? initial,
    TResult Function(_LoadCardsEvent value)? loadCardsEvent,
    TResult Function(_PickMyCardsEvent value)? pickMyCardsEvent,
    TResult Function(_SortMyCardsEvent value)? sortMyCardsEvent,
    TResult Function(_PlayCardsEvent value)? playCardsEvent,
    required TResult orElse(),
  }) {
    if (playCardsEvent != null) {
      return playCardsEvent(this);
    }
    return orElse();
  }
}

abstract class _PlayCardsEvent extends MainEvent {
  const factory _PlayCardsEvent(final bool? isMyCard) = _$PlayCardsEventImpl;
  const _PlayCardsEvent._() : super._();

  bool? get isMyCard;
  @JsonKey(ignore: true)
  _$$PlayCardsEventImplCopyWith<_$PlayCardsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainState {
  ApiStatus get loading => throw _privateConstructorUsedError;
  CardsEntity get cardList => throw _privateConstructorUsedError;
  CardsEntity get myCards => throw _privateConstructorUsedError;
  List<CardsEntity> get historyCards => throw _privateConstructorUsedError;
  List<WarningEntity> get dangerWarnings => throw _privateConstructorUsedError;
  bool get picked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {ApiStatus loading,
      CardsEntity cardList,
      CardsEntity myCards,
      List<CardsEntity> historyCards,
      List<WarningEntity> dangerWarnings,
      bool picked});

  $ApiStatusCopyWith<$Res> get loading;
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? cardList = null,
    Object? myCards = null,
    Object? historyCards = null,
    Object? dangerWarnings = null,
    Object? picked = null,
  }) {
    return _then(_value.copyWith(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      cardList: null == cardList
          ? _value.cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as CardsEntity,
      myCards: null == myCards
          ? _value.myCards
          : myCards // ignore: cast_nullable_to_non_nullable
              as CardsEntity,
      historyCards: null == historyCards
          ? _value.historyCards
          : historyCards // ignore: cast_nullable_to_non_nullable
              as List<CardsEntity>,
      dangerWarnings: null == dangerWarnings
          ? _value.dangerWarnings
          : dangerWarnings // ignore: cast_nullable_to_non_nullable
              as List<WarningEntity>,
      picked: null == picked
          ? _value.picked
          : picked // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiStatusCopyWith<$Res> get loading {
    return $ApiStatusCopyWith<$Res>(_value.loading, (value) {
      return _then(_value.copyWith(loading: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ApiStatus loading,
      CardsEntity cardList,
      CardsEntity myCards,
      List<CardsEntity> historyCards,
      List<WarningEntity> dangerWarnings,
      bool picked});

  @override
  $ApiStatusCopyWith<$Res> get loading;
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loading = null,
    Object? cardList = null,
    Object? myCards = null,
    Object? historyCards = null,
    Object? dangerWarnings = null,
    Object? picked = null,
  }) {
    return _then(_$MainStateImpl(
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as ApiStatus,
      cardList: null == cardList
          ? _value.cardList
          : cardList // ignore: cast_nullable_to_non_nullable
              as CardsEntity,
      myCards: null == myCards
          ? _value.myCards
          : myCards // ignore: cast_nullable_to_non_nullable
              as CardsEntity,
      historyCards: null == historyCards
          ? _value._historyCards
          : historyCards // ignore: cast_nullable_to_non_nullable
              as List<CardsEntity>,
      dangerWarnings: null == dangerWarnings
          ? _value._dangerWarnings
          : dangerWarnings // ignore: cast_nullable_to_non_nullable
              as List<WarningEntity>,
      picked: null == picked
          ? _value.picked
          : picked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainStateImpl extends _MainState {
  const _$MainStateImpl(
      {this.loading = const ApiStatus.initial(),
      this.cardList = const CardsEntity.initial(),
      this.myCards = const CardsEntity.initial(),
      final List<CardsEntity> historyCards = const [],
      final List<WarningEntity> dangerWarnings = const [],
      this.picked = false})
      : _historyCards = historyCards,
        _dangerWarnings = dangerWarnings,
        super._();

  @override
  @JsonKey()
  final ApiStatus loading;
  @override
  @JsonKey()
  final CardsEntity cardList;
  @override
  @JsonKey()
  final CardsEntity myCards;
  final List<CardsEntity> _historyCards;
  @override
  @JsonKey()
  List<CardsEntity> get historyCards {
    if (_historyCards is EqualUnmodifiableListView) return _historyCards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_historyCards);
  }

  final List<WarningEntity> _dangerWarnings;
  @override
  @JsonKey()
  List<WarningEntity> get dangerWarnings {
    if (_dangerWarnings is EqualUnmodifiableListView) return _dangerWarnings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dangerWarnings);
  }

  @override
  @JsonKey()
  final bool picked;

  @override
  String toString() {
    return 'MainState(loading: $loading, cardList: $cardList, myCards: $myCards, historyCards: $historyCards, dangerWarnings: $dangerWarnings, picked: $picked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.cardList, cardList) ||
                other.cardList == cardList) &&
            (identical(other.myCards, myCards) || other.myCards == myCards) &&
            const DeepCollectionEquality()
                .equals(other._historyCards, _historyCards) &&
            const DeepCollectionEquality()
                .equals(other._dangerWarnings, _dangerWarnings) &&
            (identical(other.picked, picked) || other.picked == picked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      loading,
      cardList,
      myCards,
      const DeepCollectionEquality().hash(_historyCards),
      const DeepCollectionEquality().hash(_dangerWarnings),
      picked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState extends MainState {
  const factory _MainState(
      {final ApiStatus loading,
      final CardsEntity cardList,
      final CardsEntity myCards,
      final List<CardsEntity> historyCards,
      final List<WarningEntity> dangerWarnings,
      final bool picked}) = _$MainStateImpl;
  const _MainState._() : super._();

  @override
  ApiStatus get loading;
  @override
  CardsEntity get cardList;
  @override
  CardsEntity get myCards;
  @override
  List<CardsEntity> get historyCards;
  @override
  List<WarningEntity> get dangerWarnings;
  @override
  bool get picked;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
