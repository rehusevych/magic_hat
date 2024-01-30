import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:magic_hat_task/data/core/model/failure/failure.dart';
import 'package:magic_hat_task/presentation/core/colors.dart';
import 'package:magic_hat_task/presentation/core/util/video_extensions.dart';
import 'package:mime/mime.dart';

typedef Predicate<T> = bool Function(T item);

class Predicates {
  Predicates._();

  static Predicate<T> notNull<T>() => (T t) => t != null;
}

T? safeCast<T>(obj) => obj is T ? obj : null;

VoidCallback notImplementedTap(
  BuildContext context, {
  ScaffoldMessengerState Function(BuildContext context)? getScaffold,
}) {
  return () {
    if (!kDebugMode) return;
    getScaffold ??= ScaffoldMessenger.of;

    getScaffold?.call(context)
      ?..removeCurrentSnackBar()
      ..showSnackBar(const SnackBar(content: Text('Not implemented')));
  };
}

void showErrorSnackBar(
  BuildContext context,
  String message, {
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      duration: duration,
      backgroundColor: AppColors.error,
    ),
  );
}

void showSuccessSnackBar(
  BuildContext context,
  String message, {
  Duration duration = const Duration(seconds: 2),
}) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        message,
        style: const TextStyle(color: Colors.white),
      ),
      duration: duration,
      backgroundColor: AppColors.success,
    ),
  );
}

String defaultFailureToString(BuildContext context, Failure failure) {
  return failure.maybeWhen(
    unexpected: (e, s) => unexpectedResponseText(
      text: "Unexpected Error",
      e: e,
    ),
    statusCode: (code, e, s) => unexpectedResponseText(
      text: "Something went wrong on the server side",
      e: e,
    ),
    network: () => "No internet connection",
    orElse: () => "Unexpected Error",
  );
}

String unexpectedResponseText({
  required String text,
  Object? e,
}) {
  if (kDebugMode) return e != null ? e.toString() : '$text ${e.toString()}';
  return text;
}

double calculateTextWidth(
  TextStyle style, {
  required String text,
  TextDirection textDirection = TextDirection.ltr,
  int maxLines = 1,
  double textScaleFactor = 1.0,
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  TextWidthBasis textWidthBasis = TextWidthBasis.longestLine,
}) =>
    calculateTextSize(
      style,
      text: text,
      textDirection: textDirection,
      maxLines: maxLines,
      textScaleFactor: textScaleFactor,
      minWidth: minWidth,
      maxWidth: maxWidth,
      textWidthBasis: textWidthBasis,
    ).width;

double calculateTextHeight(
  TextStyle style, {
  String text = 'M',
  TextDirection textDirection = TextDirection.ltr,
  int maxLines = 1,
  double textScaleFactor = 1.0,
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  TextWidthBasis textWidthBasis = TextWidthBasis.longestLine,
}) =>
    calculateTextSize(
      style,
      text: text,
      textDirection: textDirection,
      maxLines: maxLines,
      textScaleFactor: textScaleFactor,
      minWidth: minWidth,
      maxWidth: maxWidth,
      textWidthBasis: textWidthBasis,
    ).height;

Size calculateTextSize(
  TextStyle style, {
  String text = 'M',
  TextDirection textDirection = TextDirection.ltr,
  int maxLines = 1,
  double textScaleFactor = 1.0,
  double minWidth = 0.0,
  double maxWidth = double.infinity,
  TextWidthBasis textWidthBasis = TextWidthBasis.longestLine,
}) {
  final TextPainter textPainter = TextPainter(
    text: TextSpan(text: text, style: style),
    maxLines: maxLines,
    textScaler: TextScaler.linear(textScaleFactor),
    textDirection: textDirection,
  )..layout(minWidth: minWidth, maxWidth: maxWidth);

  return textPainter.size;
}

bool isVideoFile(String path) {
  final mimeStr = lookupMimeType(path);
  if (mimeStr == null) return false;
  final fileType = mimeStr.split('/').last;
  return videoFileExtensions.contains(fileType.toLowerCase());
}

extension MapExtensions<K, V> on Map<K, V> {
  T fold<T>(T initialValue, T Function(T acc, K key, V value) combine) {
    T acc = initialValue;

    forEach((key, value) => acc = combine(acc, key, value));

    return acc;
  }
}
