// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NumberTriviaEvent {
  int get number => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) getConcreteNumberTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number)? getConcreteNumberTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? getConcreteNumberTrivia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getConcreteNumberTrivia value)
        getConcreteNumberTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getConcreteNumberTrivia value)? getConcreteNumberTrivia,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getConcreteNumberTrivia value)? getConcreteNumberTrivia,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NumberTriviaEventCopyWith<NumberTriviaEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res, NumberTriviaEvent>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res, $Val extends NumberTriviaEvent>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$getConcreteNumberTriviaImplCopyWith<$Res>
    implements $NumberTriviaEventCopyWith<$Res> {
  factory _$$getConcreteNumberTriviaImplCopyWith(
          _$getConcreteNumberTriviaImpl value,
          $Res Function(_$getConcreteNumberTriviaImpl) then) =
      __$$getConcreteNumberTriviaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$getConcreteNumberTriviaImplCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$getConcreteNumberTriviaImpl>
    implements _$$getConcreteNumberTriviaImplCopyWith<$Res> {
  __$$getConcreteNumberTriviaImplCopyWithImpl(
      _$getConcreteNumberTriviaImpl _value,
      $Res Function(_$getConcreteNumberTriviaImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$getConcreteNumberTriviaImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$getConcreteNumberTriviaImpl implements _getConcreteNumberTrivia {
  const _$getConcreteNumberTriviaImpl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'NumberTriviaEvent.getConcreteNumberTrivia(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getConcreteNumberTriviaImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getConcreteNumberTriviaImplCopyWith<_$getConcreteNumberTriviaImpl>
      get copyWith => __$$getConcreteNumberTriviaImplCopyWithImpl<
          _$getConcreteNumberTriviaImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int number) getConcreteNumberTrivia,
  }) {
    return getConcreteNumberTrivia(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int number)? getConcreteNumberTrivia,
  }) {
    return getConcreteNumberTrivia?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int number)? getConcreteNumberTrivia,
    required TResult orElse(),
  }) {
    if (getConcreteNumberTrivia != null) {
      return getConcreteNumberTrivia(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getConcreteNumberTrivia value)
        getConcreteNumberTrivia,
  }) {
    return getConcreteNumberTrivia(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getConcreteNumberTrivia value)? getConcreteNumberTrivia,
  }) {
    return getConcreteNumberTrivia?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getConcreteNumberTrivia value)? getConcreteNumberTrivia,
    required TResult orElse(),
  }) {
    if (getConcreteNumberTrivia != null) {
      return getConcreteNumberTrivia(this);
    }
    return orElse();
  }
}

abstract class _getConcreteNumberTrivia implements NumberTriviaEvent {
  const factory _getConcreteNumberTrivia({required final int number}) =
      _$getConcreteNumberTriviaImpl;

  @override
  int get number;

  /// Create a copy of NumberTriviaEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getConcreteNumberTriviaImplCopyWith<_$getConcreteNumberTriviaImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NumberTriviaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NumberTrivia trivia) loaded,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NumberTrivia trivia)? loaded,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NumberTrivia trivia)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaStateCopyWith<$Res> {
  factory $NumberTriviaStateCopyWith(
          NumberTriviaState value, $Res Function(NumberTriviaState) then) =
      _$NumberTriviaStateCopyWithImpl<$Res, NumberTriviaState>;
}

/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res, $Val extends NumberTriviaState>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'NumberTriviaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NumberTrivia trivia) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NumberTrivia trivia)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NumberTrivia trivia)? loaded,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NumberTriviaState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$loadingImplCopyWith<$Res> {
  factory _$$loadingImplCopyWith(
          _$loadingImpl value, $Res Function(_$loadingImpl) then) =
      __$$loadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$loadingImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$loadingImpl>
    implements _$$loadingImplCopyWith<$Res> {
  __$$loadingImplCopyWithImpl(
      _$loadingImpl _value, $Res Function(_$loadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$loadingImpl implements _loading {
  const _$loadingImpl();

  @override
  String toString() {
    return 'NumberTriviaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$loadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NumberTrivia trivia) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NumberTrivia trivia)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NumberTrivia trivia)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _loading implements NumberTriviaState {
  const factory _loading() = _$loadingImpl;
}

/// @nodoc
abstract class _$$loadedImplCopyWith<$Res> {
  factory _$$loadedImplCopyWith(
          _$loadedImpl value, $Res Function(_$loadedImpl) then) =
      __$$loadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({NumberTrivia trivia});

  $NumberTriviaCopyWith<$Res> get trivia;
}

/// @nodoc
class __$$loadedImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$loadedImpl>
    implements _$$loadedImplCopyWith<$Res> {
  __$$loadedImplCopyWithImpl(
      _$loadedImpl _value, $Res Function(_$loadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trivia = null,
  }) {
    return _then(_$loadedImpl(
      trivia: null == trivia
          ? _value.trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as NumberTrivia,
    ));
  }

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NumberTriviaCopyWith<$Res> get trivia {
    return $NumberTriviaCopyWith<$Res>(_value.trivia, (value) {
      return _then(_value.copyWith(trivia: value));
    });
  }
}

/// @nodoc

class _$loadedImpl implements _loaded {
  const _$loadedImpl({required this.trivia});

  @override
  final NumberTrivia trivia;

  @override
  String toString() {
    return 'NumberTriviaState.loaded(trivia: $trivia)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$loadedImpl &&
            (identical(other.trivia, trivia) || other.trivia == trivia));
  }

  @override
  int get hashCode => Object.hash(runtimeType, trivia);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$loadedImplCopyWith<_$loadedImpl> get copyWith =>
      __$$loadedImplCopyWithImpl<_$loadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NumberTrivia trivia) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return loaded(trivia);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NumberTrivia trivia)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return loaded?.call(trivia);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NumberTrivia trivia)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(trivia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _loaded implements NumberTriviaState {
  const factory _loaded({required final NumberTrivia trivia}) = _$loadedImpl;

  NumberTrivia get trivia;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$loadedImplCopyWith<_$loadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorImplCopyWith<$Res> {
  factory _$$errorImplCopyWith(
          _$errorImpl value, $Res Function(_$errorImpl) then) =
      __$$errorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$errorImplCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$errorImpl>
    implements _$$errorImplCopyWith<$Res> {
  __$$errorImplCopyWithImpl(
      _$errorImpl _value, $Res Function(_$errorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$errorImpl(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$errorImpl implements _error {
  const _$errorImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'NumberTriviaState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$errorImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      __$$errorImplCopyWithImpl<_$errorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(NumberTrivia trivia) loaded,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(NumberTrivia trivia)? loaded,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(NumberTrivia trivia)? loaded,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_loading value) loading,
    required TResult Function(_loaded value) loaded,
    required TResult Function(_error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_loading value)? loading,
    TResult? Function(_loaded value)? loaded,
    TResult? Function(_error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_loading value)? loading,
    TResult Function(_loaded value)? loaded,
    TResult Function(_error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _error implements NumberTriviaState {
  const factory _error({required final String errorMessage}) = _$errorImpl;

  String get errorMessage;

  /// Create a copy of NumberTriviaState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$errorImplCopyWith<_$errorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
