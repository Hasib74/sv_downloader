import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
abstract class AppFailure with _$AppFailure {
  const factory AppFailure.unexpected() = _Unexpected;

  const factory AppFailure.insufficientPermission() = _InsufficientPermission;

  const factory AppFailure.unableToUpdate() = _UnableToUpdate;

  const factory AppFailure.server([int? errorCode, String? message]) = _Server;

  const factory AppFailure.noConnection() = _NoConnection;

  const factory AppFailure.unknownError([int? errorCode, String? message]) =
      _UnKnownError;
}
