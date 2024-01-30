import 'dart:io';

import 'package:dio/dio.dart';
import 'package:magic_hat_task/data/core/model/failure/failure.dart';

int? maybeResponseCode(dynamic error, {bool gatherValidation = true}) {
  if (error is DioError && error.type == DioErrorType.response) {
    return error.response?.statusCode;
  }

  return null;
}

Failure responseFailure(
  Object error,
  StackTrace? stackTrace, {
  String? reason,
}) {
  if (error is DioError) {
    if (error.type == DioErrorType.other) {
      if (error.error is SocketException) {
        return const Failure.network();
      }
    } else if (error.type == DioErrorType.response) {
      final code = error.response?.statusCode;
      return code == null
          ? Failure.unexpected(error, stackTrace)
          : Failure.statusCode(
              code,
              error,
              stackTrace,
            );
    }
  }

  return Failure.unexpected(error, stackTrace);
}
