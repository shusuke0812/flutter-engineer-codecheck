import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

// Reference
// - https://codewithandrea.com/articles/flutter-exception-handling-try-catch-result-type/

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T value) = Success<T>;
  const factory Result.error(Error error) = ResultError;
  const factory Result.exception(Exception exception) = ResultException;
}