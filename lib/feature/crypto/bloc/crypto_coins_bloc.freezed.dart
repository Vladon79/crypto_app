// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_coins_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CryptoCoinsState {
  List<CryptoCoin>? get cryptoCoins => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CryptoCoin>? cryptoCoins) idle,
    required TResult Function(List<CryptoCoin>? cryptoCoins) loading,
    required TResult Function(List<CryptoCoin>? cryptoCoins, Object error)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult? Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult? Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoCoinsState$Idle value) idle,
    required TResult Function(CryptoCoinsState$Loading value) loading,
    required TResult Function(CryptoCoinsState$Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoCoinsState$Idle value)? idle,
    TResult? Function(CryptoCoinsState$Loading value)? loading,
    TResult? Function(CryptoCoinsState$Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoCoinsState$Idle value)? idle,
    TResult Function(CryptoCoinsState$Loading value)? loading,
    TResult Function(CryptoCoinsState$Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CryptoCoinsStateCopyWith<CryptoCoinsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCoinsStateCopyWith<$Res> {
  factory $CryptoCoinsStateCopyWith(
          CryptoCoinsState value, $Res Function(CryptoCoinsState) then) =
      _$CryptoCoinsStateCopyWithImpl<$Res, CryptoCoinsState>;
  @useResult
  $Res call({List<CryptoCoin>? cryptoCoins});
}

/// @nodoc
class _$CryptoCoinsStateCopyWithImpl<$Res, $Val extends CryptoCoinsState>
    implements $CryptoCoinsStateCopyWith<$Res> {
  _$CryptoCoinsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoCoins = freezed,
  }) {
    return _then(_value.copyWith(
      cryptoCoins: freezed == cryptoCoins
          ? _value.cryptoCoins
          : cryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoCoinsState$IdleImplCopyWith<$Res>
    implements $CryptoCoinsStateCopyWith<$Res> {
  factory _$$CryptoCoinsState$IdleImplCopyWith(
          _$CryptoCoinsState$IdleImpl value,
          $Res Function(_$CryptoCoinsState$IdleImpl) then) =
      __$$CryptoCoinsState$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CryptoCoin>? cryptoCoins});
}

/// @nodoc
class __$$CryptoCoinsState$IdleImplCopyWithImpl<$Res>
    extends _$CryptoCoinsStateCopyWithImpl<$Res, _$CryptoCoinsState$IdleImpl>
    implements _$$CryptoCoinsState$IdleImplCopyWith<$Res> {
  __$$CryptoCoinsState$IdleImplCopyWithImpl(_$CryptoCoinsState$IdleImpl _value,
      $Res Function(_$CryptoCoinsState$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoCoins = freezed,
  }) {
    return _then(_$CryptoCoinsState$IdleImpl(
      cryptoCoins: freezed == cryptoCoins
          ? _value._cryptoCoins
          : cryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>?,
    ));
  }
}

/// @nodoc

class _$CryptoCoinsState$IdleImpl extends CryptoCoinsState$Idle {
  const _$CryptoCoinsState$IdleImpl(
      {required final List<CryptoCoin>? cryptoCoins})
      : _cryptoCoins = cryptoCoins,
        super._();

  final List<CryptoCoin>? _cryptoCoins;
  @override
  List<CryptoCoin>? get cryptoCoins {
    final value = _cryptoCoins;
    if (value == null) return null;
    if (_cryptoCoins is EqualUnmodifiableListView) return _cryptoCoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CryptoCoinsState.idle(cryptoCoins: $cryptoCoins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoCoinsState$IdleImpl &&
            const DeepCollectionEquality()
                .equals(other._cryptoCoins, _cryptoCoins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cryptoCoins));

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoCoinsState$IdleImplCopyWith<_$CryptoCoinsState$IdleImpl>
      get copyWith => __$$CryptoCoinsState$IdleImplCopyWithImpl<
          _$CryptoCoinsState$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CryptoCoin>? cryptoCoins) idle,
    required TResult Function(List<CryptoCoin>? cryptoCoins) loading,
    required TResult Function(List<CryptoCoin>? cryptoCoins, Object error)
        error,
  }) {
    return idle(cryptoCoins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult? Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult? Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
  }) {
    return idle?.call(cryptoCoins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(cryptoCoins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoCoinsState$Idle value) idle,
    required TResult Function(CryptoCoinsState$Loading value) loading,
    required TResult Function(CryptoCoinsState$Error value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoCoinsState$Idle value)? idle,
    TResult? Function(CryptoCoinsState$Loading value)? loading,
    TResult? Function(CryptoCoinsState$Error value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoCoinsState$Idle value)? idle,
    TResult Function(CryptoCoinsState$Loading value)? loading,
    TResult Function(CryptoCoinsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CryptoCoinsState$Idle extends CryptoCoinsState {
  const factory CryptoCoinsState$Idle(
          {required final List<CryptoCoin>? cryptoCoins}) =
      _$CryptoCoinsState$IdleImpl;
  const CryptoCoinsState$Idle._() : super._();

  @override
  List<CryptoCoin>? get cryptoCoins;

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoCoinsState$IdleImplCopyWith<_$CryptoCoinsState$IdleImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CryptoCoinsState$LoadingImplCopyWith<$Res>
    implements $CryptoCoinsStateCopyWith<$Res> {
  factory _$$CryptoCoinsState$LoadingImplCopyWith(
          _$CryptoCoinsState$LoadingImpl value,
          $Res Function(_$CryptoCoinsState$LoadingImpl) then) =
      __$$CryptoCoinsState$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CryptoCoin>? cryptoCoins});
}

/// @nodoc
class __$$CryptoCoinsState$LoadingImplCopyWithImpl<$Res>
    extends _$CryptoCoinsStateCopyWithImpl<$Res, _$CryptoCoinsState$LoadingImpl>
    implements _$$CryptoCoinsState$LoadingImplCopyWith<$Res> {
  __$$CryptoCoinsState$LoadingImplCopyWithImpl(
      _$CryptoCoinsState$LoadingImpl _value,
      $Res Function(_$CryptoCoinsState$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoCoins = freezed,
  }) {
    return _then(_$CryptoCoinsState$LoadingImpl(
      cryptoCoins: freezed == cryptoCoins
          ? _value._cryptoCoins
          : cryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>?,
    ));
  }
}

/// @nodoc

class _$CryptoCoinsState$LoadingImpl extends CryptoCoinsState$Loading {
  const _$CryptoCoinsState$LoadingImpl(
      {required final List<CryptoCoin>? cryptoCoins})
      : _cryptoCoins = cryptoCoins,
        super._();

  final List<CryptoCoin>? _cryptoCoins;
  @override
  List<CryptoCoin>? get cryptoCoins {
    final value = _cryptoCoins;
    if (value == null) return null;
    if (_cryptoCoins is EqualUnmodifiableListView) return _cryptoCoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CryptoCoinsState.loading(cryptoCoins: $cryptoCoins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoCoinsState$LoadingImpl &&
            const DeepCollectionEquality()
                .equals(other._cryptoCoins, _cryptoCoins));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cryptoCoins));

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoCoinsState$LoadingImplCopyWith<_$CryptoCoinsState$LoadingImpl>
      get copyWith => __$$CryptoCoinsState$LoadingImplCopyWithImpl<
          _$CryptoCoinsState$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CryptoCoin>? cryptoCoins) idle,
    required TResult Function(List<CryptoCoin>? cryptoCoins) loading,
    required TResult Function(List<CryptoCoin>? cryptoCoins, Object error)
        error,
  }) {
    return loading(cryptoCoins);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult? Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult? Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
  }) {
    return loading?.call(cryptoCoins);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(cryptoCoins);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoCoinsState$Idle value) idle,
    required TResult Function(CryptoCoinsState$Loading value) loading,
    required TResult Function(CryptoCoinsState$Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoCoinsState$Idle value)? idle,
    TResult? Function(CryptoCoinsState$Loading value)? loading,
    TResult? Function(CryptoCoinsState$Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoCoinsState$Idle value)? idle,
    TResult Function(CryptoCoinsState$Loading value)? loading,
    TResult Function(CryptoCoinsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CryptoCoinsState$Loading extends CryptoCoinsState {
  const factory CryptoCoinsState$Loading(
          {required final List<CryptoCoin>? cryptoCoins}) =
      _$CryptoCoinsState$LoadingImpl;
  const CryptoCoinsState$Loading._() : super._();

  @override
  List<CryptoCoin>? get cryptoCoins;

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoCoinsState$LoadingImplCopyWith<_$CryptoCoinsState$LoadingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CryptoCoinsState$ErrorImplCopyWith<$Res>
    implements $CryptoCoinsStateCopyWith<$Res> {
  factory _$$CryptoCoinsState$ErrorImplCopyWith(
          _$CryptoCoinsState$ErrorImpl value,
          $Res Function(_$CryptoCoinsState$ErrorImpl) then) =
      __$$CryptoCoinsState$ErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CryptoCoin>? cryptoCoins, Object error});
}

/// @nodoc
class __$$CryptoCoinsState$ErrorImplCopyWithImpl<$Res>
    extends _$CryptoCoinsStateCopyWithImpl<$Res, _$CryptoCoinsState$ErrorImpl>
    implements _$$CryptoCoinsState$ErrorImplCopyWith<$Res> {
  __$$CryptoCoinsState$ErrorImplCopyWithImpl(
      _$CryptoCoinsState$ErrorImpl _value,
      $Res Function(_$CryptoCoinsState$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoCoins = freezed,
    Object? error = null,
  }) {
    return _then(_$CryptoCoinsState$ErrorImpl(
      cryptoCoins: freezed == cryptoCoins
          ? _value._cryptoCoins
          : cryptoCoins // ignore: cast_nullable_to_non_nullable
              as List<CryptoCoin>?,
      error: null == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$CryptoCoinsState$ErrorImpl extends CryptoCoinsState$Error {
  const _$CryptoCoinsState$ErrorImpl(
      {required final List<CryptoCoin>? cryptoCoins, required this.error})
      : _cryptoCoins = cryptoCoins,
        super._();

  final List<CryptoCoin>? _cryptoCoins;
  @override
  List<CryptoCoin>? get cryptoCoins {
    final value = _cryptoCoins;
    if (value == null) return null;
    if (_cryptoCoins is EqualUnmodifiableListView) return _cryptoCoins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object error;

  @override
  String toString() {
    return 'CryptoCoinsState.error(cryptoCoins: $cryptoCoins, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoCoinsState$ErrorImpl &&
            const DeepCollectionEquality()
                .equals(other._cryptoCoins, _cryptoCoins) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cryptoCoins),
      const DeepCollectionEquality().hash(error));

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoCoinsState$ErrorImplCopyWith<_$CryptoCoinsState$ErrorImpl>
      get copyWith => __$$CryptoCoinsState$ErrorImplCopyWithImpl<
          _$CryptoCoinsState$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CryptoCoin>? cryptoCoins) idle,
    required TResult Function(List<CryptoCoin>? cryptoCoins) loading,
    required TResult Function(List<CryptoCoin>? cryptoCoins, Object error)
        error,
  }) {
    return error(cryptoCoins, this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult? Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult? Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
  }) {
    return error?.call(cryptoCoins, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CryptoCoin>? cryptoCoins)? idle,
    TResult Function(List<CryptoCoin>? cryptoCoins)? loading,
    TResult Function(List<CryptoCoin>? cryptoCoins, Object error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(cryptoCoins, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CryptoCoinsState$Idle value) idle,
    required TResult Function(CryptoCoinsState$Loading value) loading,
    required TResult Function(CryptoCoinsState$Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CryptoCoinsState$Idle value)? idle,
    TResult? Function(CryptoCoinsState$Loading value)? loading,
    TResult? Function(CryptoCoinsState$Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CryptoCoinsState$Idle value)? idle,
    TResult Function(CryptoCoinsState$Loading value)? loading,
    TResult Function(CryptoCoinsState$Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CryptoCoinsState$Error extends CryptoCoinsState {
  const factory CryptoCoinsState$Error(
      {required final List<CryptoCoin>? cryptoCoins,
      required final Object error}) = _$CryptoCoinsState$ErrorImpl;
  const CryptoCoinsState$Error._() : super._();

  @override
  List<CryptoCoin>? get cryptoCoins;
  Object get error;

  /// Create a copy of CryptoCoinsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CryptoCoinsState$ErrorImplCopyWith<_$CryptoCoinsState$ErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CryptoCoinsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reloadNextPack,
    required TResult Function() reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reloadNextPack,
    TResult? Function()? reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reloadNextPack,
    TResult Function()? reloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReloadNextPack value) reloadNextPack,
    required TResult Function(_ReloadData value) reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReloadNextPack value)? reloadNextPack,
    TResult? Function(_ReloadData value)? reloadData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReloadNextPack value)? reloadNextPack,
    TResult Function(_ReloadData value)? reloadData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoCoinsEventCopyWith<$Res> {
  factory $CryptoCoinsEventCopyWith(
          CryptoCoinsEvent value, $Res Function(CryptoCoinsEvent) then) =
      _$CryptoCoinsEventCopyWithImpl<$Res, CryptoCoinsEvent>;
}

/// @nodoc
class _$CryptoCoinsEventCopyWithImpl<$Res, $Val extends CryptoCoinsEvent>
    implements $CryptoCoinsEventCopyWith<$Res> {
  _$CryptoCoinsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CryptoCoinsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ReloadNextPackImplCopyWith<$Res> {
  factory _$$ReloadNextPackImplCopyWith(_$ReloadNextPackImpl value,
          $Res Function(_$ReloadNextPackImpl) then) =
      __$$ReloadNextPackImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadNextPackImplCopyWithImpl<$Res>
    extends _$CryptoCoinsEventCopyWithImpl<$Res, _$ReloadNextPackImpl>
    implements _$$ReloadNextPackImplCopyWith<$Res> {
  __$$ReloadNextPackImplCopyWithImpl(
      _$ReloadNextPackImpl _value, $Res Function(_$ReloadNextPackImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoCoinsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReloadNextPackImpl extends _ReloadNextPack {
  const _$ReloadNextPackImpl() : super._();

  @override
  String toString() {
    return 'CryptoCoinsEvent.reloadNextPack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadNextPackImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reloadNextPack,
    required TResult Function() reloadData,
  }) {
    return reloadNextPack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reloadNextPack,
    TResult? Function()? reloadData,
  }) {
    return reloadNextPack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reloadNextPack,
    TResult Function()? reloadData,
    required TResult orElse(),
  }) {
    if (reloadNextPack != null) {
      return reloadNextPack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReloadNextPack value) reloadNextPack,
    required TResult Function(_ReloadData value) reloadData,
  }) {
    return reloadNextPack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReloadNextPack value)? reloadNextPack,
    TResult? Function(_ReloadData value)? reloadData,
  }) {
    return reloadNextPack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReloadNextPack value)? reloadNextPack,
    TResult Function(_ReloadData value)? reloadData,
    required TResult orElse(),
  }) {
    if (reloadNextPack != null) {
      return reloadNextPack(this);
    }
    return orElse();
  }
}

abstract class _ReloadNextPack extends CryptoCoinsEvent {
  const factory _ReloadNextPack() = _$ReloadNextPackImpl;
  const _ReloadNextPack._() : super._();
}

/// @nodoc
abstract class _$$ReloadDataImplCopyWith<$Res> {
  factory _$$ReloadDataImplCopyWith(
          _$ReloadDataImpl value, $Res Function(_$ReloadDataImpl) then) =
      __$$ReloadDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReloadDataImplCopyWithImpl<$Res>
    extends _$CryptoCoinsEventCopyWithImpl<$Res, _$ReloadDataImpl>
    implements _$$ReloadDataImplCopyWith<$Res> {
  __$$ReloadDataImplCopyWithImpl(
      _$ReloadDataImpl _value, $Res Function(_$ReloadDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CryptoCoinsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReloadDataImpl extends _ReloadData {
  const _$ReloadDataImpl() : super._();

  @override
  String toString() {
    return 'CryptoCoinsEvent.reloadData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReloadDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() reloadNextPack,
    required TResult Function() reloadData,
  }) {
    return reloadData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? reloadNextPack,
    TResult? Function()? reloadData,
  }) {
    return reloadData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? reloadNextPack,
    TResult Function()? reloadData,
    required TResult orElse(),
  }) {
    if (reloadData != null) {
      return reloadData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReloadNextPack value) reloadNextPack,
    required TResult Function(_ReloadData value) reloadData,
  }) {
    return reloadData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ReloadNextPack value)? reloadNextPack,
    TResult? Function(_ReloadData value)? reloadData,
  }) {
    return reloadData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReloadNextPack value)? reloadNextPack,
    TResult Function(_ReloadData value)? reloadData,
    required TResult orElse(),
  }) {
    if (reloadData != null) {
      return reloadData(this);
    }
    return orElse();
  }
}

abstract class _ReloadData extends CryptoCoinsEvent {
  const factory _ReloadData() = _$ReloadDataImpl;
  const _ReloadData._() : super._();
}
