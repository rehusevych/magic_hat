import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page.g.dart';

part 'page.freezed.dart';

const int pageSize = kDebugMode ? 5 : 20;

@freezed
class PageData with _$PageData {
  const PageData._();

  const factory PageData({
    @Default(pageSize) int size,
    @Default(0) int totalElements,
    @Default(0) int totalPages,
    @Default(0) int number,
  }) = _PageData;

  bool get isLastPage => (number >= totalPages - 1) || totalPages == 0;

  Map<String, dynamic> toQueries() {
    return <String, dynamic>{
      'page': number,
      'size': size,
    };
  }

  factory PageData.fromJson(Map<String, dynamic> json) =>
      _$PageDataFromJson(json);
}
