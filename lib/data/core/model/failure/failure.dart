import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.unexpected(Object? e, StackTrace? s) = _Unexpected;
  const factory Failure.statusCode(int statusCode, Object? e, StackTrace? s) =
      _StatusCode;
  const factory Failure.empty() = _Empty;
  const factory Failure.network() = _Network;
}
