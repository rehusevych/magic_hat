import 'package:magic_hat_task/data/core/model/failure/failure.dart';

Failure responseFailure(
  Object error,
  StackTrace? stackTrace, {
  String? reason,
}) {
  return Failure.unexpected(error, stackTrace);
}

Failure catchBoxCrash(Object e, StackTrace s, String reason) {
  return Failure.unexpected(e, s);
}
