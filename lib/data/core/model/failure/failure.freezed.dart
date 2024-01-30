// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace? s) unexpected,
    required TResult Function(int statusCode, Object? e, StackTrace? s)
        statusCode,
    required TResult Function() empty,
    required TResult Function() network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace? s)? unexpected,
    TResult? Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult? Function()? empty,
    TResult? Function()? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace? s)? unexpected,
    TResult Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult Function()? empty,
    TResult Function()? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_StatusCode value) statusCode,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_StatusCode value)? statusCode,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_StatusCode value)? statusCode,
    TResult Function(_Empty value)? empty,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UnexpectedCopyWith<$Res> {
  factory _$$_UnexpectedCopyWith(
          _$_Unexpected value, $Res Function(_$_Unexpected) then) =
      __$$_UnexpectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? e, StackTrace? s});
}

/// @nodoc
class __$$_UnexpectedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Unexpected>
    implements _$$_UnexpectedCopyWith<$Res> {
  __$$_UnexpectedCopyWithImpl(
      _$_Unexpected _value, $Res Function(_$_Unexpected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
    Object? s = freezed,
  }) {
    return _then(_$_Unexpected(
      freezed == e ? _value.e : e,
      freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_Unexpected implements _Unexpected {
  const _$_Unexpected(this.e, this.s);

  @override
  final Object? e;
  @override
  final StackTrace? s;

  @override
  String toString() {
    return 'Failure.unexpected(e: $e, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unexpected &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e), s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      __$$_UnexpectedCopyWithImpl<_$_Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace? s) unexpected,
    required TResult Function(int statusCode, Object? e, StackTrace? s)
        statusCode,
    required TResult Function() empty,
    required TResult Function() network,
  }) {
    return unexpected(e, s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace? s)? unexpected,
    TResult? Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult? Function()? empty,
    TResult? Function()? network,
  }) {
    return unexpected?.call(e, s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace? s)? unexpected,
    TResult Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult Function()? empty,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(e, s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_StatusCode value) statusCode,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Network value) network,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_StatusCode value)? statusCode,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Network value)? network,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_StatusCode value)? statusCode,
    TResult Function(_Empty value)? empty,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements Failure {
  const factory _Unexpected(final Object? e, final StackTrace? s) =
      _$_Unexpected;

  Object? get e;
  StackTrace? get s;
  @JsonKey(ignore: true)
  _$$_UnexpectedCopyWith<_$_Unexpected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StatusCodeCopyWith<$Res> {
  factory _$$_StatusCodeCopyWith(
          _$_StatusCode value, $Res Function(_$_StatusCode) then) =
      __$$_StatusCodeCopyWithImpl<$Res>;
  @useResult
  $Res call({int statusCode, Object? e, StackTrace? s});
}

/// @nodoc
class __$$_StatusCodeCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_StatusCode>
    implements _$$_StatusCodeCopyWith<$Res> {
  __$$_StatusCodeCopyWithImpl(
      _$_StatusCode _value, $Res Function(_$_StatusCode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? e = freezed,
    Object? s = freezed,
  }) {
    return _then(_$_StatusCode(
      null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == e ? _value.e : e,
      freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as StackTrace?,
    ));
  }
}

/// @nodoc

class _$_StatusCode implements _StatusCode {
  const _$_StatusCode(this.statusCode, this.e, this.s);

  @override
  final int statusCode;
  @override
  final Object? e;
  @override
  final StackTrace? s;

  @override
  String toString() {
    return 'Failure.statusCode(statusCode: $statusCode, e: $e, s: $s)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusCode &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            const DeepCollectionEquality().equals(other.e, e) &&
            (identical(other.s, s) || other.s == s));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusCode, const DeepCollectionEquality().hash(e), s);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusCodeCopyWith<_$_StatusCode> get copyWith =>
      __$$_StatusCodeCopyWithImpl<_$_StatusCode>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace? s) unexpected,
    required TResult Function(int statusCode, Object? e, StackTrace? s)
        statusCode,
    required TResult Function() empty,
    required TResult Function() network,
  }) {
    return statusCode(this.statusCode, e, s);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace? s)? unexpected,
    TResult? Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult? Function()? empty,
    TResult? Function()? network,
  }) {
    return statusCode?.call(this.statusCode, e, s);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace? s)? unexpected,
    TResult Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult Function()? empty,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (statusCode != null) {
      return statusCode(this.statusCode, e, s);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_StatusCode value) statusCode,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Network value) network,
  }) {
    return statusCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_StatusCode value)? statusCode,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Network value)? network,
  }) {
    return statusCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_StatusCode value)? statusCode,
    TResult Function(_Empty value)? empty,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (statusCode != null) {
      return statusCode(this);
    }
    return orElse();
  }
}

abstract class _StatusCode implements Failure {
  const factory _StatusCode(
          final int statusCode, final Object? e, final StackTrace? s) =
      _$_StatusCode;

  int get statusCode;
  Object? get e;
  StackTrace? get s;
  @JsonKey(ignore: true)
  _$$_StatusCodeCopyWith<_$_StatusCode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<$Res> {
  factory _$$_EmptyCopyWith(_$_Empty value, $Res Function(_$_Empty) then) =
      __$$_EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res, _$_Empty>
    implements _$$_EmptyCopyWith<$Res> {
  __$$_EmptyCopyWithImpl(_$_Empty _value, $Res Function(_$_Empty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Empty implements _Empty {
  const _$_Empty();

  @override
  String toString() {
    return 'Failure.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace? s) unexpected,
    required TResult Function(int statusCode, Object? e, StackTrace? s)
        statusCode,
    required TResult Function() empty,
    required TResult Function() network,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace? s)? unexpected,
    TResult? Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult? Function()? empty,
    TResult? Function()? network,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace? s)? unexpected,
    TResult Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult Function()? empty,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_StatusCode value) statusCode,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Network value) network,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_StatusCode value)? statusCode,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Network value)? network,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_StatusCode value)? statusCode,
    TResult Function(_Empty value)? empty,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty implements Failure {
  const factory _Empty() = _$_Empty;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_Network>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network();

  @override
  String toString() {
    return 'Failure.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Object? e, StackTrace? s) unexpected,
    required TResult Function(int statusCode, Object? e, StackTrace? s)
        statusCode,
    required TResult Function() empty,
    required TResult Function() network,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Object? e, StackTrace? s)? unexpected,
    TResult? Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult? Function()? empty,
    TResult? Function()? network,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Object? e, StackTrace? s)? unexpected,
    TResult Function(int statusCode, Object? e, StackTrace? s)? statusCode,
    TResult Function()? empty,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Unexpected value) unexpected,
    required TResult Function(_StatusCode value) statusCode,
    required TResult Function(_Empty value) empty,
    required TResult Function(_Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Unexpected value)? unexpected,
    TResult? Function(_StatusCode value)? statusCode,
    TResult? Function(_Empty value)? empty,
    TResult? Function(_Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Unexpected value)? unexpected,
    TResult Function(_StatusCode value)? statusCode,
    TResult Function(_Empty value)? empty,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements Failure {
  const factory _Network() = _$_Network;
}
